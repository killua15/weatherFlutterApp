enum BaseUrls { current, normals, forecast_onecall }

extension BaseUrl on BaseUrls {
  getBaseUrl() {
    switch (this) {
      case BaseUrls.current:
        return "https://api.weatherbit.io/v2.0/current?key=e02340c6a51a4516b45dd2ad7532ae24&lang=es&";
      case BaseUrls.normals:
        return "https://api.weatherbit.io/v2.0/normals?key=e02340c6a51a4516b45dd2ad7532ae24&lang=es&";
      case BaseUrls.forecast_onecall:
        return "https://api.openweathermap.org/data/2.5/onecall?exclude=hourly&appid=1c4ce9aee270bc92e21776fcddbdc4af&units=metric&";
    }
  }

  getParams(String params) {
    return params;
  }
}
