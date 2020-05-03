
import 'package:dio/dio.dart';
import 'network_config.dart';

class HttpRequest {
  /// 将dio对象改成全局类对象，后面多种网络请求可以共用
  /// 1.创建Dio对象
  static  BaseOptions baseOptions = BaseOptions(
    connectTimeout: TimeOut,
    baseUrl: Base_Url,
  );
  static  final dio = Dio(baseOptions);


  static  Future request(String url, {String method = "get", Map<String, String> params}) async {
    /// 2.发生网络请求
    Options options = Options(method: method);

    /// 3.捕获异常
    try {
      var result = await  dio.request(url,queryParameters: params, options: options);
      return result;
    } on DioError catch (error) {
      throw error;
    }
  }
}
