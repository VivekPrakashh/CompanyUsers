import 'package:flutter/material.dart';
import 'package:signindemo/modal/user.dart';
import 'package:signindemo/services/user_services.dart';

class UserProvider extends ChangeNotifier{
  final _service = UserService();
  bool isLoading = false;
  List<User> _users = [];
  List<User> get users => _users;

  Future<void> getAllUsers() async {
    isLoading = true;
    notifyListeners();

    final response = await _service.getAll();
    
    _users = response;
    isLoading = false;
    notifyListeners();
  }
}