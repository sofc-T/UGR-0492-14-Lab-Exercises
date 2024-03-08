import 'dart:io';

void main() {
  final String filePath = '';

  try {
    File file = File(filePath);
    if (!file.existsSync()) {
      throw FileSystemException("File not found", filePath);
    }

    String contents = file.readAsStringSync();
    print('File content: $contents');
  } catch (e) {
    if (e is FileSystemException) {
      print('Error: ${e.message}');
    } else {
      print('Error: $e');
    }
  }
}
