class ForecastModel {
  String lat;
  String lon;
  String timezone;
  String timezoneOffset;
  Current current;
  List<Hourly> hourly;
  List<Daily> daily;

  ForecastModel(
      {this.lat,
      this.lon,
      this.timezone,
      this.timezoneOffset,
      this.current,
      this.hourly,
      this.daily});

  ForecastModel.fromJson(Map<String, dynamic> json) {
    lat = json['lat'].toString();
    lon = json['lon'].toString();
    timezone = json['timezone'].toString();
    timezoneOffset = json['timezone_offset'].toString();
    ;
    current =
        json['current'] != null ? new Current.fromJson(json['current']) : null;
    if (json['hourly'] != null) {
      hourly = new List<Hourly>();
      json['hourly'].forEach((v) {
        hourly.add(new Hourly.fromJson(v));
      });
    }
    if (json['daily'] != null) {
      daily = new List<Daily>();
      json['daily'].forEach((v) {
        daily.add(new Daily.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lon'] = this.lon;
    data['timezone'] = this.timezone;
    data['timezone_offset'] = this.timezoneOffset;
    if (this.current != null) {
      data['current'] = this.current.toJson();
    }
    if (this.hourly != null) {
      data['hourly'] = this.hourly.map((v) => v.toJson()).toList();
    }
    if (this.daily != null) {
      data['daily'] = this.daily.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Current {
  String dt;
  String sunrise;
  String sunset;
  String temp;
  String feelsLike;
  String pressure;
  String humidity;
  String dewPoint;
  String uvi;
  String clouds;
  String visibility;
  String windSpeed;
  String windDeg;
  List<Weather> weather;

  Current(
      {this.dt,
      this.sunrise,
      this.sunset,
      this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      this.dewPoint,
      this.uvi,
      this.clouds,
      this.visibility,
      this.windSpeed,
      this.windDeg,
      this.weather});

  Current.fromJson(Map<String, dynamic> json) {
    dt = json['dt'].toString();
    sunrise = json['sunrise'].toString();
    sunset = json['sunset'].toString();
    temp = json['temp'].toString();
    feelsLike = json['feels_like'].toString();
    pressure = json['pressure'].toString();
    humidity = json['humidity'].toString();
    dewPoint = json['dew_point'].toString();
    uvi = json['uvi'].toString();
    clouds = json['clouds'].toString();
    visibility = json['visibility'].toString();
    windSpeed = json['wind_speed'].toString();
    windDeg = json['wind_deg'].toString();
    if (json['weather'] != null) {
      weather = new List<Weather>();
      json['weather'].forEach((v) {
        weather.add(new Weather.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dt'] = this.dt;
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    data['temp'] = this.temp;
    data['feels_like'] = this.feelsLike;
    data['pressure'] = this.pressure;
    data['humidity'] = this.humidity;
    data['dew_point'] = this.dewPoint;
    data['uvi'] = this.uvi;
    data['clouds'] = this.clouds;
    data['visibility'] = this.visibility;
    data['wind_speed'] = this.windSpeed;
    data['wind_deg'] = this.windDeg;
    if (this.weather != null) {
      data['weather'] = this.weather.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Weather {
  String id;
  String main;
  String description;
  String icon;

  Weather({this.id, this.main, this.description, this.icon});

  Weather.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    main = json['main'].toString();
    description = json['description'].toString();
    icon = json['icon'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['main'] = this.main;
    data['description'] = this.description;
    data['icon'] = this.icon;
    return data;
  }
}

class Hourly {
  String dt;
  String temp;
  String feelsLike;
  String pressure;
  String humidity;
  String dewPoint;
  String uvi;
  String clouds;
  String visibility;
  String windSpeed;
  String windDeg;
  String windGust;
  List<Weather> weather;
  String pop;
  Rain rain;

  Hourly(
      {this.dt,
      this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      this.dewPoint,
      this.uvi,
      this.clouds,
      this.visibility,
      this.windSpeed,
      this.windDeg,
      this.windGust,
      this.weather,
      this.pop,
      this.rain});

  Hourly.fromJson(Map<String, dynamic> json) {
    dt = json['dt'].toString();
    temp = json['temp'].toString();
    feelsLike = json['feels_like'].toString();
    pressure = json['pressure'].toString();
    humidity = json['humidity'].toString();
    dewPoint = json['dew_point'].toString();
    uvi = json['uvi'].toString();
    clouds = json['clouds'].toString();
    visibility = json['visibility'].toString();
    windSpeed = json['wind_speed'].toString();
    windDeg = json['wind_deg'].toString();
    windGust = json['wind_gust'].toString();
    if (json['weather'] != null) {
      weather = new List<Weather>();
      json['weather'].forEach((v) {
        weather.add(new Weather.fromJson(v));
      });
    }
    pop = json['pop'];
    rain = json['rain'] != null ? new Rain.fromJson(json['rain']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dt'] = this.dt;
    data['temp'] = this.temp;
    data['feels_like'] = this.feelsLike;
    data['pressure'] = this.pressure;
    data['humidity'] = this.humidity;
    data['dew_point'] = this.dewPoint;
    data['uvi'] = this.uvi;
    data['clouds'] = this.clouds;
    data['visibility'] = this.visibility;
    data['wind_speed'] = this.windSpeed;
    data['wind_deg'] = this.windDeg;
    data['wind_gust'] = this.windGust;
    if (this.weather != null) {
      data['weather'] = this.weather.map((v) => v.toJson()).toList();
    }
    data['pop'] = this.pop;
    if (this.rain != null) {
      data['rain'] = this.rain.toJson();
    }
    return data;
  }
}

class Rain {
  String d1h;

  Rain({this.d1h});

  Rain.fromJson(Map<String, dynamic> json) {
    d1h = json['1h'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['1h'] = this.d1h;
    return data;
  }
}

class Daily {
  String dt;
  String sunrise;
  String sunset;
  Temp temp;
  FeelsLike feelsLike;
  String pressure;
  String humidity;
  String dewPoint;
  String windSpeed;
  String windDeg;
  List<Weather> weather;
  String clouds;
  String pop;
  String uvi;
  String rain;

  Daily(
      {this.dt,
      this.sunrise,
      this.sunset,
      this.temp,
      this.feelsLike,
      this.pressure,
      this.humidity,
      this.dewPoint,
      this.windSpeed,
      this.windDeg,
      this.weather,
      this.clouds,
      this.pop,
      this.uvi,
      this.rain});

  Daily.fromJson(Map<String, dynamic> json) {
    dt = json['dt'].toString();
    sunrise = json['sunrise'].toString();
    sunset = json['sunset'].toString();
    temp = json['temp'] != null ? new Temp.fromJson(json['temp']) : null;
    feelsLike = json['feels_like'] != null
        ? new FeelsLike.fromJson(json['feels_like'])
        : null;
    pressure = json['pressure'].toString();
    humidity = json['humidity'].toString();
    dewPoint = json['dew_point'].toString();
    windSpeed = json['wind_speed'].toString();
    windDeg = json['wind_deg'].toString();
    if (json['weather'] != null) {
      weather = new List<Weather>();
      json['weather'].forEach((v) {
        weather.add(new Weather.fromJson(v));
      });
    }
    clouds = json['clouds'].toString();
    pop = json['pop'].toString();
    uvi = json['uvi'].toString();
    rain = json['rain'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['dt'] = this.dt;
    data['sunrise'] = this.sunrise;
    data['sunset'] = this.sunset;
    if (this.temp != null) {
      data['temp'] = this.temp.toJson();
    }
    if (this.feelsLike != null) {
      data['feels_like'] = this.feelsLike.toJson();
    }
    data['pressure'] = this.pressure;
    data['humidity'] = this.humidity;
    data['dew_point'] = this.dewPoint;
    data['wind_speed'] = this.windSpeed;
    data['wind_deg'] = this.windDeg;
    if (this.weather != null) {
      data['weather'] = this.weather.map((v) => v.toJson()).toList();
    }
    data['clouds'] = this.clouds;
    data['pop'] = this.pop;
    data['uvi'] = this.uvi;
    data['rain'] = this.rain;
    return data;
  }
}

class Temp {
  String day;
  String min;
  String max;
  String night;
  String eve;
  String morn;

  Temp({this.day, this.min, this.max, this.night, this.eve, this.morn});

  Temp.fromJson(Map<String, dynamic> json) {
    day = json['day'].toString();
    min = json['min'].toString();
    max = json['max'].toString();
    night = json['night'].toString();
    eve = json['eve'].toString();
    morn = json['morn'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    data['min'] = this.min;
    data['max'] = this.max;
    data['night'] = this.night;
    data['eve'] = this.eve;
    data['morn'] = this.morn;
    return data;
  }
}

class FeelsLike {
  String day;
  String night;
  String eve;
  String morn;

  FeelsLike({this.day, this.night, this.eve, this.morn});

  FeelsLike.fromJson(Map<String, dynamic> json) {
    day = json['day'].toString();
    night = json['night'].toString();
    eve = json['eve'].toString();
    morn = json['morn'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['day'] = this.day;
    data['night'] = this.night;
    data['eve'] = this.eve;
    data['morn'] = this.morn;
    return data;
  }
}
