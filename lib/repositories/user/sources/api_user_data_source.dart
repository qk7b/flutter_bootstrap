import 'package:dio/dio.dart';
import 'package:flutter_bootstrap_app/models/user.model.dart';
import 'package:retrofit/retrofit.dart';

part 'api_user_data_source.g.dart';

@RestApi()
abstract class ApiUserDataSource {
  factory ApiUserDataSource(Dio dio, {String? baseUrl}) = _ApiUserDataSource;

  @PUT('/user')
  Future<void> updateUserProfile({@Body() required User user});

  @GET('/user')
  Future<User> getCurrentUser();

  @DELETE('/user')
  Future<void> deleteUserData();
}
