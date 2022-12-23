import 'package:flutter/material.dart';

List<Weather> weathers = [
  Weather(weather: 'Humidity', value: '30%'),
  Weather(weather: 'Precipitation', value: '5.1mL'),
  Weather(weather: 'Pressure', value: '450hPa'),
  Weather(weather: 'Wind', value: '23m/s')
];

class ConditionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: weathers
          .map((parameter) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        parameter.weather,
                        style: const TextStyle(color: Colors.white30),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        parameter.value,
                        style: const TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ))
          .toList(),
    );
  }
}

class Weather {
  final String weather;
  final String value;
  Weather({required this.weather, required this.value});
}
