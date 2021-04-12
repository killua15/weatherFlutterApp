class DailyWeather {
  double lat;
  double lon;
  String timezone;
  List<String> sources;
  List<Data> data;

  DailyWeather({this.lat, this.lon, this.timezone, this.sources, this.data});

  DailyWeather.fromJson(Map<String, dynamic> json) {
    lat = json['lat'];
    lon = json['lon'];
    timezone = json['timezone'];
    sources = json['sources'].cast<String>();
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['timezone'] = this.timezone;
    data['sources'] = this.sources;
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String dewpt;
  String snow;
  String minWindSpd;
  String windDir;
  String hour;
  String month;
  String maxTemp;
  String day;
  String windSpd;
  String temp;
  String minTemp;
  String maxWindSpd;
  String precip;

  Data(
      {this.dewpt,
      this.snow,
      this.minWindSpd,
      this.windDir,
      this.hour,
      this.month,
      this.maxTemp,
      this.day,
      this.windSpd,
      this.temp,
      this.minTemp,
      this.maxWindSpd,
      this.precip});

  Data.fromJson(Map<String, dynamic> json) {
    dewpt = json['dewpt'].toString();
    snow = json['snow'].toString();
    minWindSpd = json['min_wind_spd'].toString();
    windDir = json['wind_dir'].toString();
    hour = json['hour'].toString();
    month = json['month'].toString();
    maxTemp = json['max_temp'].toString();
    day = json['day'].toString();
    windSpd = json['wind_spd'].toString();
    temp = json['temp'].toString();
    minTemp = json['min_temp'].toString();
    maxWindSpd = json['max_wind_spd'].toString();
    precip = json['precip'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dewpt'] = this.dewpt;
    data['snow'] = this.snow;
    data['min_wind_spd'] = this.minWindSpd;
    data['wind_dir'] = this.windDir;
    data['hour'] = this.hour;
    data['month'] = this.month;
    data['max_temp'] = this.maxTemp;
    data['day'] = this.day;
    data['wind_spd'] = this.windSpd;
    data['temp'] = this.temp;
    data['min_temp'] = this.minTemp;
    data['max_wind_spd'] = this.maxWindSpd;
    data['precip'] = this.precip;
    return data;
  }
}
