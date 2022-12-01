class RegisterModel {
  String? fullName;
  String? email;
  String? password;
  String? phone;

  RegisterModel({this.fullName, this.email, this.password, this.phone});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    fullName = json['full_name'];
    email = json['email'];
    password = json['password'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['full_name'] = fullName;
    data['email'] = email;
    data['password'] = password;
    data['phone'] = phone;
    return data;
  }
}
