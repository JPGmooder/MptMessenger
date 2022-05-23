import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/logic/searcher/searcher_bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearcherWidget extends StatefulWidget {
  SearcherWidget({Key? key, required this.setSearcherState}) : super(key: key);
  void Function(bool) setSearcherState;
  @override
  State<SearcherWidget> createState() => _SearcherWidgetState();
}

class _SearcherWidgetState extends State<SearcherWidget> {
  late TextEditingController _controller;
  late bool isFocused;
  late FocusNode _searcherFoucNode;
  final StreamController<String> _searcherStream = StreamController<String>();

  @override
  void initState() {
    _searcherFoucNode = FocusNode();
    isFocused = false;
    _controller = TextEditingController();
    _controller.addListener(() {
      _controller.text.isNotEmpty
          ? isFocused
              ? null
              : setState(() {
                  isFocused = true;
                })
          : isFocused
              ? setState(() {
                  isFocused = false;
                })
              : null;
      _searcherStream.add(_controller.text);
    });
    _searcherFoucNode.addListener(() {
      log(_searcherFoucNode.hasFocus.toString());
      if (_searcherFoucNode.hasFocus) {
        setState(() {
          widget.setSearcherState(_searcherFoucNode.hasFocus);
          isFocused = _searcherFoucNode.hasFocus;
        });
      }
    });
    _searcherStream.stream
        .debounceTime(Duration(milliseconds: 1000))
        .distinct()
        .listen((event) {
      context.read<SearcherBloc>().add(SearcherEvent.searchByTag(
          event.startsWith("@") ? event : '@' + event));
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.clear();
    _searcherStream.close();
    _searcherFoucNode.removeListener((() => null));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10),
      child: Column(children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              Icons.search,
              size: 20,
            ),
            const Spacer(
              flex: 5,
            ),
            Expanded(
              flex: 100,
              child: TextFormField(
                focusNode: _searcherFoucNode,
                controller: _controller,
                decoration: const InputDecoration(
                    hintText: "Search", border: InputBorder.none),
              ),
            ),
            NeumorphicButton(
              child: isFocused ? const Icon(Icons.close) : Container(),
              onPressed: isFocused
                  ? () => setState(() {
                        _controller.text = '';
                        widget.setSearcherState(false);
                        isFocused = false;
                      })
                  : null,
              style: const NeumorphicStyle(
                  boxShape: NeumorphicBoxShape.circle(),
                  color: NeumorphicColors.background,
                  depth: 5),
            )
          ],
        ),
      ]),
    );
  }
}
