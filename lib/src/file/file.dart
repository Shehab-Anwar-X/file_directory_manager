import 'dart:io';

import 'i_file.dart';

class FileManager implements IFileManager {
  const FileManager();

  @override
  void create({
    required String filePath,
    String? content,
  }) {
    final file = File(filePath);
    if (content != null) {
      file.writeAsStringSync(content);
    }
  }

  @override
  void updateName({
    required String oldPath,
    required String newName,
  }) {
    final oldFile = File(oldPath);
    if (oldFile.existsSync()) {
      final newPath = oldFile.parent.path + Platform.pathSeparator + newName;
      oldFile.renameSync(newPath);
    }
  }

  @override
  void changeLocation({
    required String oldPath,
    required String newPath,
  }) {
    final oldFile = File(oldPath);
    if (oldFile.existsSync()) {
      final newFile = File(newPath);
      oldFile.renameSync(newFile.path);
    }
  }

  @override
  void delete({
    required String filePath,
  }) {
    final file = File(filePath);
    if (file.existsSync()) {
      file.deleteSync();
    }
  }
}
