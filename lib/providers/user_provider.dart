import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/user.dart';


class UserProvider extends ChangeNotifier{

  User _data;

  get data => _data;

  set data(User user){
    this._data = user;
    notifyListeners();
  }

  static UserProvider of(BuildContext context)=>Provider.of<UserProvider>(context);

}