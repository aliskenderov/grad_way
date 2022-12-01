import 'dart:convert';
import 'package:http/http.dart';

class LoginData {
  static Future logindata(
    String phone,
    String password,
  ) async {
    Uri url = Uri.parse("http://192.46.235.171/api/auth/login");
    String tokenBearer = "19|7iyZkMICBhWLFi9ipE3wUsVdhoU9JxvJNBj7w3Yn";

    Response response = await post(url, body: {
      'phone': phone,
      'password': password,
    });

    if (response.statusCode == 200) {
      var loginData = jsonDecode(response.body);
      print(loginData);
      return loginData;
    } else {
      var data = jsonDecode(response.body);
      print(data);
      throw response.statusCode;
    }
  }
}
