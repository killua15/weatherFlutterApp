import 'package:flutter/material.dart';
import 'package:weather_app2/Services/Models/forecast_model.dart';
import 'package:weather_app2/Services/Models/weather.dart';
import 'package:weather_app2/Widgets/list_days.dart';
import 'dart:ui';

import 'package:weather_app2/Widgets/temperature.dart';

class ImageTemperature extends StatelessWidget {
  ForecastModel posts;
  var lat;
  var lon;
  ImageTemperature(this.posts, this.lat, this.lon);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    final imageWeather = Container(
      height: 200,
      width: 200,
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://openweathermap.org/img/wn/${posts.current.weather.first.icon}@4x.png")),
      ),
    );
    final textWeather = Text(
      "${posts.current.temp}",
      style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
    );
    return Column(
      children: [
        imageWeather,
        textWeather,
        Temperature(posts.current.temp, posts.daily.first.rain,
            posts.current.windSpeed),
        ListDays(lat, lon)
      ],
    );
  }
}
