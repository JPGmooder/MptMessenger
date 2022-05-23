import 'dart:math';
import 'dart:typed_data';

import 'package:custom_image_crop/custom_image_crop.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CropperWidget extends StatefulWidget {
  CropperWidget(
      {Key? key,
      required this.constraints,
      required this.defaultImage,
      required this.onCroppingComplete})
      : super(key: key);
  BoxConstraints constraints;
  void Function(MemoryImage croppedImage) onCroppingComplete;
  Uint8List defaultImage;
  @override
  State<CropperWidget> createState() => _CropperWidgetState();
}

class _CropperWidgetState extends State<CropperWidget> {
  late CustomImageCropController cropController;
  late double sliderValue;
  late bool isCropping;
  @override
  void initState() {
    isCropping = false;
    cropController = CustomImageCropController();
    sliderValue = 10.0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kIsWeb ? widget.constraints.maxWidth * 0.3 : null,
      height: kIsWeb ? widget.constraints.maxHeight * 0.3 : null,
      child: Column(
        children: [
          // NeumorphicText("Pick yours personal avatar"),
          Expanded(
            child: CustomImageCrop(
              cropController: cropController,
              image: Image.memory(widget.defaultImage).image,
            ),
          ),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      icon: const Icon(Icons.refresh),
                      onPressed: cropController.reset),
                  IconButton(
                      icon: const Icon(Icons.rotate_left),
                      onPressed: () => cropController
                          .addTransition(CropImageData(angle: -pi / 4))),
                  IconButton(
                      icon: const Icon(Icons.rotate_right),
                      onPressed: () => cropController
                          .addTransition(CropImageData(angle: pi / 4))),
                  isCropping
                      ? const CircularProgressIndicator.adaptive()
                      : IconButton(
                          icon: const Icon(Icons.done),
                          onPressed: () async {
                            setState(() {
                              isCropping = true;
                            });
                            final image = await cropController.onCropImage();
                            if (image != null) {
                              widget.onCroppingComplete(image);
                            }
                          },
                        ),
                ],
              ),
              if (kIsWeb)
                NeumorphicSlider(
                  max: 100,
                  min: 0,
                  value: sliderValue,
                  onChanged: (value) {
                    cropController.addTransition(CropImageData(
                        scale: sliderValue == value
                            ? 1
                            : value > sliderValue
                                ? 1.01
                                : 0.99));
                    setState(() {
                      sliderValue = value;
                    });
                  },
                )
            ],
          ),
          SizedBox(height: MediaQuery.of(context).padding.bottom),
        ],
      ),
    );
  }
}
