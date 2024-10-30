class WeatherData {
  final String date;
  final double temperature;
  final double humidity;
  final double luminosity;
  final double wind;
  final double rain;
  final String unit;

  WeatherData({
    required this.date,
    required this.temperature,
    required this.humidity,
    required this.luminosity,
    required this.wind,
    required this.rain,
    required this.unit,
  });

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      date: json['data'],
      temperature: json['temperatura'],
      humidity: json['umidade'],
      luminosity: json['luminosidade'],
      wind: json['vento'],
      rain: json['chuva'],
      unit: json['unidade'],
    );
  }
}
