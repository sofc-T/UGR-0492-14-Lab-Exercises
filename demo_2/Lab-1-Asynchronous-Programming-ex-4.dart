import 'dart:convert';
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchWeatherData(String apiKey, String city) async {
  
  String apiUrl = '';
  http.Response response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    Map<String, dynamic> data = jsonDecode(response.body);
    return data;
  } else {
    throw Exception('Failed to fetch weather data: ${response.statusCode}');
  }
}

void main() async {
  String apiKey = 'YOUR_API_KEY';
  String city = 'New York';

  try {
    Map<String, dynamic> weatherData = await fetchWeatherData(apiKey, city);

    double temperature = weatherData['main']['temp'];
    String weatherCondition = weatherData['weather'][0]['description'];
    
    print('Current Temperature: $temperature°C');
    print('Weather Conditions: $weatherCondition');
  } catch (e) {
    print('Error: $e');
  }
}
