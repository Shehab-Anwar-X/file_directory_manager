library file_directory_manager;

import 'src/directory/directory.dart';
import 'src/file/file.dart';
import 'src/file/file_content.dart';

abstract class FileDirectoryManager {
  const FileDirectoryManager();

  static DirectoryManager get directory => const DirectoryManager();

  static FileManager get file => const FileManager();

  static FileContentManager get fileContent => const FileContentManager();
}
