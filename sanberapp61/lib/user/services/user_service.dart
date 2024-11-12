import 'package:dio/dio.dart';
import 'package:sanberapp61/user/user_model.dart';

class UserService {
  Dio dio = Dio();
  static const url = 'https://reqres.in/api/users?page=2';

  Future<List<UserModel>> fetchUser() async {
    try {
      final response = await dio.get(url);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['data'];
        List<UserModel> users =
            List.from(data.map((user) => UserModel.fromJson(user)));

        return users;
      }
      throw Exception();
    } catch (e) {
      rethrow;
    }
  }

  Future<UserModel?> detailUser(int userId) async {
    try {
      final response = await dio.get(url);

      if (response.statusCode == 200 || response.statusCode == 201) {
        final data = response.data['data'];
        final user =
            data.firstWhere((user) => user['id'] == userId, orElse: () => null);

        if (data.isNotEmpty) {
          return UserModel.fromJson(user);
        } else {
          return null;
        }
      }
      throw Exception('Failed to load user');
    } catch (e) {
      rethrow;
    }
  }
}
