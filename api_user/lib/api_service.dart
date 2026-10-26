import 'package:api_user/user_model.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio dio = Dio();

  Future<List<UserModel>> fetchUsers() async {
    final response = await dio.get(
      'https://jsonplaceholder.typicode.com/users',
    );

    List data = response.data;

    return data.map((json) {
      return UserModel.fromJson(json);
    }).toList();


    
  }
}
