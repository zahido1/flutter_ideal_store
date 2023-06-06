import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ideal_store/constant/api_url.dart';

import '../model/login_model.dart';

class LoginService {
  final String url = "${apiUrl}/login";

  Future<String?> loginMethod(var email, var password) async {
    LoginModel login = LoginModel(email: email, password: password);

    final response = await Dio().post(url, data: loginModelToJson(login));

    if (response.statusCode == 200) {
      debugPrint("Success");
      return response.data['token'];
    } else {
      debugPrint("Error");
    }
  }
}
