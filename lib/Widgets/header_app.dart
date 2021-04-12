import 'package:flutter/material.dart';
import 'package:weather_app2/Services/Models/forecast_model.dart';
import 'package:weather_app2/Services/Models/weather.dart';
import 'package:weather_app2/Utils/date_utils.dart';

class HeaderApp extends StatelessWidget {
  ForecastModel posts;
  HeaderApp(this.posts);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 100,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(
            children: [
              LocationIcon(),
              TextLocation(
                  "${posts.timezone.split("/")[1]} ${FormateDate.toDateFormatUnix(posts.current.dt, "dd-mm-yyyy HH:mm")}")
            ],
          )
        ],
      ),
    );
  }
}

class LocationIcon extends StatelessWidget {
  LocationIcon();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(right: 20),
      child: Icon(
        Icons.location_on,
        color: Colors.black87,
      ),
    );
  }
}

class PlusIcon extends StatelessWidget {
  PlusIcon();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Icon(
      Icons.add,
      color: Colors.black87,
      size: 30,
    );
  }
}

class TextLocation extends StatelessWidget {
  String location;
  TextLocation(this.location);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text(
      location,
      textAlign: TextAlign.left,
      style: TextStyle(
          color: Colors.black,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.bold,
          fontSize: 20),
    );
  }
}
