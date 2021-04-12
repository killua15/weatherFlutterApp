import 'package:flutter/material.dart';
import 'package:weather_app2/Services/Models/daily_wether.dart';
import 'package:weather_app2/Services/Models/forecast_model.dart';
import 'package:weather_app2/Utils/date_utils.dart';

class CardDay extends StatefulWidget {
  Daily daily;
  CardDay(this.daily);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CardDay(daily);
  }
}

class _CardDay extends State<CardDay> {
  Daily daily;
  _CardDay(this.daily);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: 15,
          margin: EdgeInsets.only(left: 20, top: 0),
          child:
              Text(FormateDate.toDateFormatUnix(daily.dt, "dd-mm-yyyy HH:mm")),
        ),
        Container(
          height: 150,
          width: 100,
          margin: EdgeInsets.only(left: 30, top: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Max: ${daily.temp.max}°",
                style: TextStyle(fontSize: 10),
              ),
              Text(
                "Min: ${daily.temp.min}°",
                style: TextStyle(fontSize: 10),
              ),
              Container(
                width: 25,
                height: 25,
                margin: EdgeInsets.only(right: 5),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://openweathermap.org/img/wn/${daily.weather[0].icon}@4x.png")),
                ),
              ),
              Text(
                "${daily.weather.first.description}",
                style: TextStyle(fontSize: 10),
              ),
              Text(
                "${daily.temp.day}°",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey.withOpacity(0.3)),
        )
      ],
    );
  }
}
