import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:userlist/modal/user.dart';

class UserService {
 Future<List<User>> getAll() async {
  const url = 'https://jsonplaceholder.typicode.com/users';

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      List<dynamic> jsonList = json.decode(response.body);
      return jsonList.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load users');
    }
  } catch (error) {
    print('Error fetching users: $error');
    rethrow;
  }
}
}
