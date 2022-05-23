import 'dart:developer';
import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:mptmessenger/asset/strings.dart';
import 'package:path_provider/path_provider.dart';


class FilePickerLib {
  static Future<FilePickerResult?> pickAttachements() async {
    FilePickerResult? files = await FilePicker.platform
        .pickFiles(allowMultiple: true, withData: true, lockParentWindow: true);
    return files;
  }

  static Future<String?> isFileExists(String fileName) async {
    var dir = await FilePickerLib.getFilesDirectory();
    if (dir != null && await File(dir + fileName).exists()) {
      return File(dir + fileName).path;
    }
  }

  static Future<String?> getFilesDirectory() async {
    if (!kIsWeb) {
      var documentPath = (await getApplicationDocumentsDirectory()).path;
      log(documentPath);
      var directory = Directory(documentPath + defaultDirectoryPath);
      if (!(await Directory(documentPath + defaultDirectoryPath).exists())) {
        await directory.create();
      }
      return directory.path;
    }
  }
}
