import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_demo_project/infrastructure/models/register_model.dart';
import 'package:flutter_demo_project/presentation/screens/auth/login_screen.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class RegisterData {
  static Future registerData(String fullName, String email, String password,
      String phone, BuildContext context) async {
    Uri url = Uri.parse("http://192.46.235.171/api/auth/register");
    Map body = {
      'full_name': fullName,
      'email': email,
      'password': password,
      'phone': phone
    };

    Response response = await http.post(url, body: body);

    if (response.statusCode == 200) {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => const LoginScreen()));
      var registerData = jsonDecode(response.body);

      return registerData;
    } else {
      var data = jsonDecode(response.body);
      print(data);
      throw response.statusCode;
    }
  }
}
