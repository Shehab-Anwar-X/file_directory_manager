import 'dart:io';

abstract class IDirectoryManager {
  const IDirectoryManager();

  /// Create a new directory.
  void create({
    required String path,
  });

  /// Update the directory name.
  Directory updateDirectoryName({
    required String path,
    required String name,
  });

  /// Delete a directory.
  void delete({
    required String path,
  });

  /// List the contents of a directory
  List<FileSystemEntity> listDirectoryContents({
    required String path,
  });
}
