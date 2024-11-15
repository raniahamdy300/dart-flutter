//----- 4. Weather Report:  --------- can't solve it
// Use Map and List to create a program that stores weather data for different cities (temperature,
// humidity, etc.). Write a function that can retrieve and print weather details using a city name.
import 'dart:io';

var weatherReport = Map<String, String>();
void main() {
  weatherStoredDate();
  print('Enter a city name to show details:');
  String cityName = stdin.readLineSync()!;
  weatherDetails(cityName);
}

weatherStoredDate() {
  print('Enter a city name');
  String city = stdin.readLineSync()!;
  print('Enter a city temperature');
  String temperature = stdin.readLineSync()!;
  print('Enter a city humidity');
  String humidity = stdin.readLineSync()!;

  weatherReport['cityName'] = city;
  weatherReport['cityTempreture'] = temperature;
  weatherReport['humidity'] = humidity;

  var weatherList = weatherReport.entries.map((entry) {
    return entry;
  }).toList();
  print(weatherList);
  return weatherList;
}

void weatherDetails(String cityName) {
  print(weatherReport[cityName]);
}
