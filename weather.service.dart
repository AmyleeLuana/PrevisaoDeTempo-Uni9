import 'package:http/http.dart' as http;
import 'dart:convert';
import 'weather_data.dart';

class WeatherService {
  Future<List<WeatherData>> fetchWeatherForecast() async {
    final response =
        await http.get(Uri.parse('https://demo3520525.mockable.io/previsao'));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => WeatherData.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load weather forecast');
    }
  }
}
