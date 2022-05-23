import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mptmessenger/logic/searcher/searcher_repository.dart';
import 'package:mptmessenger/model/another_user.dart';
part 'searcher_events.dart';
part 'searcher_states.dart';
part 'searcher_bloc.freezed.dart';

class SearcherBloc extends Bloc<SearcherEvent, SearcherState> {
  SearcherBloc() : super(const SearcherState.initial()) {
    on<SearcherEvent>((event, emit) async {
      await event.when(
          searchByTag: (tag) async {
            emit(const SearcherState.loading());
            if (tag.length < 4) {
              emit(const SearcherState.usersEmpty());
            } else {
              var findedUsers = await SearcherRepository.getUsersByTag(tag);
              if (findedUsers == null) {
                emit(const SearcherState.usersEmpty());
              } else {
                emit(SearcherState.usersGot(findedUsers));
              }
            }
          },
          searchClean: () => null);
    });
  }
}
