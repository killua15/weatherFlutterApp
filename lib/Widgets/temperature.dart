import 'package:flutter/material.dart';

class Temperature extends StatelessWidget {
  String temperature;
  String precipitacion;
  String wind;
  Temperature(this.temperature, this.precipitacion, this.wind);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    //
    final temperatureText = Text(
      "${temperature}°",
      style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
    );

    final wind = Row(
      children: [
        Container(
          width: 15,
          height: 15,
          margin: EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/wind.png")),
          ),
        ),
        Text("${this.wind}km/h")
      ],
    );
    final precipitacion = Row(
      children: [
        Container(
          width: 15,
          height: 15,
          margin: EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/rain.png")),
          ),
        ),
        Text("${this.precipitacion}%")
      ],
    );
    final wind_presipitationRow = Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [wind, precipitacion],
    );
    return Container(
      height: 150,
      width: 200,
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Center(
        child: Column(
          children: [temperatureText, wind_presipitationRow],
        ),
      ),
    );
  }
}
