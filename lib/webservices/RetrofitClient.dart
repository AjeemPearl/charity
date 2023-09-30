

import 'package:demo_flutter/models/Data.dart';
import 'package:demo_flutter/webservices/UrlHelper.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'RetrofitClient.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class RetrofitClient{
  factory RetrofitClient(Dio dio) = _RetrofitClient;

  @GET(getPhotos)
  Future<List<Photos>> getUsers();
}
