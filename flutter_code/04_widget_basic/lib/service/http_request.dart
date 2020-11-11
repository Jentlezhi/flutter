import 'dart:async';

import 'package:dio/dio.dart';
import 'package:hello_flutter/service/http_config.dart';

class MyHttpRequest {
  ///避免每次都重新创建
  static final BaseOptions baseOptions = BaseOptions(
      baseUrl: HttpConfig.BASE_URL, connectTimeout: HttpConfig.TIME_OUT);
  static final Dio dio = Dio(baseOptions);

  static Future<T> request<T>(String url,
      {String method = 'get', Map<String, dynamic> parameters, Interceptor interceptor}) async {
    ///单独的配置
    final Options options = Options(method: method);

    ///添加拦截器
    Interceptor defaultInter = InterceptorsWrapper(onRequest: (value){
//      value.queryParameters = {"name":"HaHa"};
      print("请求参数：${value.queryParameters}");
      print("请求URL：${value.uri})");
    },onResponse: (value){
      print("响应：$value");
    },onError: (error){
      print("异常：$error");
    });
    List<Interceptor> interceptors = [defaultInter];
    if(interceptor != null){
      interceptors.add(interceptor);
    }
    ///统一添加到拦截器
    dio.interceptors.addAll(interceptors);
    ///发送网络请求
    try {
      Response res =
          await dio.request(url, queryParameters: parameters, options: options);
      return res.data;
    } on DioError catch (e) {
      return Future.error(e);
    }
//    var value = Future.value(res.data);
//    return value;
  }
}
