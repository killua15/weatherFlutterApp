import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:weather_app2/Services/Models/daily_wether.dart';
import 'package:weather_app2/Services/Models/forecast_model.dart';
import 'package:weather_app2/Services/Network/network_client.dart';
import 'package:weather_app2/Widgets/card_day.dart';

class ListDays extends StatelessWidget {
  var lat;
  var lon;
  ListDays(this.lat, this.lon);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        height: 180,
        margin: EdgeInsets.only(top: 20),
        padding: EdgeInsets.only(left: 10, right: 10),
        child: _buildBody(context, lat, lon));
  }
}

FutureBuilder<ForecastModel> _buildBody(
    BuildContext context, double lat, double lon) {
  final client =
      NetworClient(Dio(BaseOptions(contentType: "application/json")));
  return FutureBuilder<ForecastModel>(
    future: client.getTimeDaily(lat, lon),
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
  List<CardDay> cards = List();
  for (var item in posts.daily) {
    cards.add(CardDay(item));
  }
  print(cards);
  return ListView(
    scrollDirection: Axis.horizontal,
    children: cards,
  );
}
