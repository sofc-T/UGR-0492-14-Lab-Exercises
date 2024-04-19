import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  
  var response = await http.get(Uri.parse(url));

  
  if (response.statusCode == 200) {
    
    var file = File(savePath);
    var sink = file.openWrite();

    
    await sink.addStream(response.bodyBytes);

    
    await sink.close();
    print('File downloaded successfully: $savePath');
  } else {
    print('Failed to download file: ${response.statusCode}');
  }
}

void main() async {
  
  String url = '';
  String savePath = '';

  await downloadFile(url, savePath);
}
