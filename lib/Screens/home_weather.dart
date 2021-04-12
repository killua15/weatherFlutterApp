import 'dart:async';
import 'dart:ui';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app2/Services/Models/forecast_model.dart';
import 'package:weather_app2/Services/Models/weather.dart';
import 'package:weather_app2/Services/Network/network_client.dart';
import 'package:weather_app2/Services/Network/routes.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app2/Utils/colors_utils.dart';
import 'package:weather_app2/Utils/position_utils.dart';
import 'package:weather_app2/Widgets/header_app.dart';
import 'package:weather_app2/Widgets/image_temperature.dart';

class WheatherApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _WheatherApp();
  }
}

class _WheatherApp extends State<WheatherApp> {
  String color1 = "#FFA000";
  String color2 = "#FF9800";
  String color3 = "#5dd0fa";
  String color4 = "#79e1fe";
  Position _currentPosition;

  var _currentAddress = "";

  Geolocator _geolocator;
  Position _position;
  var lat;
  var lon;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    lat = 25.000;
    lon = -83.000;
    _geolocator = Geolocator();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      // height: window.physicalSize.height,
      // width: window.physicalSize.width,
      child: _buildBody(context),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [HexColor.fromHex(color3), HexColor.fromHex(color4)],
              begin: FractionalOffset(0.6, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.4, 0.8],
              tileMode: TileMode.clamp)),
    ));
  }

  FutureBuilder<ForecastModel> _buildBody(BuildContext context) {
    final client =
        NetworClient(Dio(BaseOptions(contentType: "application/json")));
    print("${_position.latitude} ${_position.longitude}");
    return FutureBuilder<ForecastModel>(
      future: client.getTime(_position.latitude, _position.longitude),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final ForecastModel posts = snapshot.data;
          return _buildListView(context, posts);
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }

  Widget _buildListView(BuildContext context, ForecastModel posts) {
    return Column(
      children: [
        HeaderApp(posts),
        ImageTemperature(posts, lat, lon),
      ],
    );
  }

  void _getCurrentLocation() async {
    try {
      Position newPosition = await Geolocator.getCurrentPosition(
              desiredAccuracy: LocationAccuracy.high)
          .timeout(new Duration(seconds: 5));

      setState(() {
        _position = newPosition;
        lat = _position.latitude;
        lon = _position.latitude;
        print("lat ${_position.latitude} lon ${_position.longitude}");
      });
    } catch (e) {
      print('Error: ${e.toString()}');
    }
  }
}
