abstract class IFileManager {
  const IFileManager();

  /// Create a new file with the specified path and write content to it.
  void create({
    required String filePath,
    String? content,
  });

  /// Update the name of a file.
  void updateName({
    required String oldPath,
    required String newName,
  });

  /// Change the location of the file.
  void changeLocation({
    required String oldPath,
    required String newPath,
  });

  /// Delete a file.
  void delete({
    required String filePath,
  });
}

abstract class IFileContentManager {
  const IFileContentManager();

  /// Read the contents of a file.
  String? read({
    required String filePath,
  });

  /// Update the content of a file.
  void update({
    required String filePath,
    required String newContent,
  });

  /// Delete the content of a file (empty the file).
  void delete({
    required String filePath,
  });
}
