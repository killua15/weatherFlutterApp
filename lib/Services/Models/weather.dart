class WeatherApp {
  List<Data> data;
  int count;

  WeatherApp({this.data, this.count});

  WeatherApp.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = new List<Data>();
      json['data'].forEach((v) {
        data.add(new Data.fromJson(v));
      });
    }
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data.map((v) => v.toJson()).toList();
    }
    data['count'] = this.count;
    return data;
  }
}

class Data {
  String rh;
  String pod;
  String lon;
  String pres;
  String timezone;
  String obTime;
  String countryCode;
  String clouds;
  String ts;
  String solarRad;
  String stateCode;
  String cityName;
  String windSpd;
  String windCdirFull;
  String windCdir;
  String slp;
  String vis;
  String hAngle;
  String sunset;
  String dni;
  String dewpt;
  String snow;
  String uv;
  String precip;
  String windDir;
  String sunrise;
  String ghi;
  String dhi;
  String aqi;
  String lat;
  Weather weather;
  String datetime;
  String temp;
  String station;
  String elevAngle;
  String appTemp;

  Data(
      {this.rh,
      this.pod,
      this.lon,
      this.pres,
      this.timezone,
      this.obTime,
      this.countryCode,
      this.clouds,
      this.ts,
      this.solarRad,
      this.stateCode,
      this.cityName,
      this.windSpd,
      this.windCdirFull,
      this.windCdir,
      this.slp,
      this.vis,
      this.hAngle,
      this.sunset,
      this.dni,
      this.dewpt,
      this.snow,
      this.uv,
      this.precip,
      this.windDir,
      this.sunrise,
      this.ghi,
      this.dhi,
      this.aqi,
      this.lat,
      this.weather,
      this.datetime,
      this.temp,
      this.station,
      this.elevAngle,
      this.appTemp});

  Data.fromJson(Map<String, dynamic> json) {
    rh = json['rh'].toString();
    pod = json['pod'].toString();
    lon = json['lon'].toString();
    pres = json['pres'].toString();
    timezone = json['timezone'].toString();
    obTime = json['ob_time'].toString();
    countryCode = json['country_code'].toString();
    clouds = json['clouds'].toString();
    ts = json['ts'].toString();
    solarRad = json['solar_rad'].toString();
    stateCode = json['state_code'].toString();
    cityName = json['city_name'].toString();
    windSpd = json['wind_spd'].toString();
    windCdirFull = json['wind_cdir_full'].toString();
    windCdir = json['wind_cdir'].toString();
    slp = json['slp'].toString();
    vis = json['vis'].toString();
    hAngle = json['h_angle'].toString();
    sunset = json['sunset'].toString();
    dni = json['dni'].toString();
    dewpt = json['dewpt'].toString();
    snow = json['snow'].toString();
    uv = json['uv'].toString();
    precip = json['precip'].toString();
    windDir = json['wind_dir'].toString();
    sunrise = json['sunrise'].toString();
    ghi = json['ghi'].toString();
    dhi = json['dhi'].toString();
    aqi = json['aqi'].toString();
    lat = json['lat'].toString();
    weather =
        json['weather'] != null ? new Weather.fromJson(json['weather']) : null;
    datetime = json['datetime'].toString();
    temp = json['temp'].toString();
    station = json['station'].toString();
    elevAngle = json['elev_angle'].toString();
    appTemp = json['app_temp'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rh'] = this.rh;
    data['pod'] = this.pod;
    data['lon'] = this.lon;
    data['pres'] = this.pres;
    data['timezone'] = this.timezone;
    data['ob_time'] = this.obTime;
    data['country_code'] = this.countryCode;
    data['clouds'] = this.clouds;
    data['ts'] = this.ts;
    data['solar_rad'] = this.solarRad;
    data['state_code'] = this.stateCode;
    data['city_name'] = this.cityName;
    data['wind_spd'] = this.windSpd;
    data['wind_cdir_full'] = this.windCdirFull;
    data['wind_cdir'] = this.windCdir;
    data['slp'] = this.slp;
    data['vis'] = this.vis;
    data['h_angle'] = this.hAngle;
    data['sunset'] = this.sunset;
    data['dni'] = this.dni;
    data['dewpt'] = this.dewpt;
    data['snow'] = this.snow;
    data['uv'] = this.uv;
    data['precip'] = this.precip;
    data['wind_dir'] = this.windDir;
    data['sunrise'] = this.sunrise;
    data['ghi'] = this.ghi;
    data['dhi'] = this.dhi;
    data['aqi'] = this.aqi;
    data['lat'] = this.lat;
    if (this.weather != null) {
      data['weather'] = this.weather.toJson();
    }
    data['datetime'] = this.datetime;
    data['temp'] = this.temp;
    data['station'] = this.station;
    data['elev_angle'] = this.elevAngle;
    data['app_temp'] = this.appTemp;
    return data;
  }
}

class Weather {
  String icon;
  int code;
  String description;

  Weather({this.icon, this.code, this.description});

  Weather.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    code = json['code'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['code'] = this.code;
    data['description'] = this.description;
    return data;
  }
}
