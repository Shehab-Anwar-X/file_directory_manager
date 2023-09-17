import 'dart:io';
import 'i_directory.dart';

class DirectoryManager implements IDirectoryManager {
  const DirectoryManager();

  @override
  void create({
    required String path,
  }) {
    return Directory(path).createSync();
  }

  @override
  Directory updateDirectoryName({
    required String path,
    required String name,
  }) {
    final directory = Directory(path);
    if (directory.existsSync()) {
      final newPath = Directory('${directory.parent.path}/$name');
      return directory.renameSync(newPath.path);
    } else {
      throw const FileSystemException('Directory not found.');
    }
  }

  @override
  void delete({
    required String path,
  }) {
    final directory = Directory(path);
    if (directory.existsSync()) {
      return directory.deleteSync(recursive: true);
    } else {
      throw const FileSystemException('Directory not found.');
    }
  }

  @override
  List<FileSystemEntity> listDirectoryContents({
    required String path,
  }) {
    final directory = Directory(path);
    if (directory.existsSync()) {
      return directory.listSync();
    } else {
      throw const FileSystemException('Directory not found.');
    }
  }
}
