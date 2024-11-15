//----- 4. Weather Report:  --------- can't solve it
// Use Map and List to create a program that stores weather data for different cities (temperature,
// humidity, etc.). Write a function that can retrieve and print weather details using a city name.

import 'dart:convert';

void main() {
  List<City> cityData = [
    City(cityName: 'france', humidity: 10, temperature: 15),
    City(cityName: 'egypt', humidity: 15, temperature: 25),
    City(cityName: 'italy', humidity: 5, temperature: 10)
  ];

  CityWeatherData('france', cityData);
}

class City {
  String? cityName;
  double? temperature;
  double? humidity;

  City({this.cityName, this.humidity, this.temperature});
}

void CityWeatherData(String name, List<City> cityData) {
  for (int i = 0; i < cityData.length; i++) {
    if (cityData[i].cityName == name) {
      print('Temperature of $name: ${cityData[i].temperature} C');
      print('humidity of $name: ${cityData[i].humidity} %');
      break;
    }
  }
}
