import 'package:dio/dio.dart';
import 'package:weather/http/http_exception.dart';
import 'package:weather/utils/log_utils.dart';

class HttpInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    final HttpException exception = HttpException.generate(err);
    err.error = exception;
    // LogUtil.d("request error:${err.toString()}");

    super.onError(err, handler);
  }
}
