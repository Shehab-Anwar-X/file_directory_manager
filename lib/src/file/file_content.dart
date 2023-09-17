import 'dart:io';

import 'i_file.dart';

class FileContentManager implements IFileContentManager {
  const FileContentManager();

  @override
  String? read({
    required String filePath,
  }) {
    final file = File(filePath);
    if (file.existsSync()) {
      return file.readAsStringSync();
    }
    return null;
  }

  @override
  void update({
    required String filePath,
    required String newContent,
  }) {
    final file = File(filePath);
    if (file.existsSync()) {
      file.writeAsStringSync(newContent);
    }
  }

  @override
  void delete({
    required String filePath,
  }) {
    final file = File(filePath);
    if (file.existsSync()) {
      file.writeAsStringSync('');
    }
  }
}
