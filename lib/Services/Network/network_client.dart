import 'package:retrofit/retrofit.dart';

import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
import 'package:weather_app2/Services/Models/daily_wether.dart';
import 'package:weather_app2/Services/Models/forecast_model.dart';
import 'package:weather_app2/Services/Models/weather.dart';
import 'package:weather_app2/Services/Network/routes.dart';

@RestApi(
    baseUrl:
        "https://api.weatherbit.io/v2.0/current?key=e02340c6a51a4516b45dd2ad7532ae24&lang=es&")
abstract class NetworClient {
  factory NetworClient(Dio dio, {String baseUrl}) = _NetworClient;

  @GET("lat={lat}&lon={lon}")
  Future<ForecastModel> getTime(double lat, double lng);

  @GET("lat=lat&lon=lon")
  Future<ForecastModel> getTimeDaily(double lat, double lng);
}

class _NetworClient implements NetworClient {
  _NetworClient(this._dio, {this.baseUrl}) {
    ArgumentError.checkNotNull(_dio, '_dio');
    baseUrl ??=
        'https://api.weatherbit.io/v2.0/current?key=e02340c6a51a4516b45dd2ad7532ae24&lang=es&';
  }

  final Dio _dio;

  String baseUrl;

  @override
  Future<ForecastModel> getTime(double lat, double lon) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio.request<Map<String, dynamic>>(
        'lat=${lat}&lon=${lon}',
        queryParameters: queryParameters,
        options: RequestOptions(
            method: 'GET',
            extra: _extra,
            baseUrl: BaseUrls.forecast_onecall.getBaseUrl()),
        data: _data);
    final value = ForecastModel.fromJson(_result.data);
    return value;
  }

  @override
  Future<ForecastModel> getTimeDaily(double lat, double lng) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _data = <String, dynamic>{};
    print(BaseUrls.forecast_onecall.getBaseUrl());
    final _result =
        await _dio.request<Map<String, dynamic>>('lat=${lat}&lon=${lng}',
            //queryParameters: queryParameters,
            options: RequestOptions(
                method: 'GET',
                //extra: _extra,
                baseUrl: BaseUrls.forecast_onecall.getBaseUrl()),
            data: _data);

    final value = ForecastModel.fromJson(_result.data);
    return value;
  }
}
