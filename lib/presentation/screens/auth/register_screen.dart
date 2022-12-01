import 'package:flutter/material.dart';
import 'package:flutter_demo_project/presentation/screens/auth/login_screen.dart';
import 'package:flutter_demo_project/presentation/widgets/bottom_navigation.dart';
import '../../../infrastructure/services/auth_service/register_service.dart';
import '../../../utilities/constants/app_styles.dart';
import '../../../utilities/constants/class_styles.dart';
import '../../widgets/button_container.dart';
import '../../widgets/text_field_widget.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  RegisterData registerData = RegisterData();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
          child: SafeArea(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ClipPath(
            clipper: Customshape(),
            child: Container(
              height: 170,
              color: AppColors.blueColor,
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 10,
          ),
          Text(
            "Sing in to Grad Way",
            style: TextStyles.styleForHeadings
                .copyWith(color: AppColors.blackColor),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: TextFieldWidget(
                iconData: Icons.person,
                text: 'Full name',
                controller: fullnameController,
                isTrue: false),
          ),
          TextFieldWidget(
            iconData: Icons.email,
            text: 'Enter your email',
            controller: emailController,
            isTrue: false,
          ),
          TextFieldWidget(
            iconData: Icons.phone,
            text: 'Phone',
            controller: phoneController,
            isTrue: false,
          ),
          TextFieldWidget(
            iconData: Icons.lock,
            text: 'Enter your password',
            controller: passwordController,
            isTrue: true,
            icon: Icons.remove_red_eye,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 5.5,
          ),
          GestureDetector(
            onTap: (() async {
              var response = await RegisterData.registerData(
                fullnameController.text,
                emailController.text,
                passwordController.text,
                phoneController.text,
                context,
              );

              if (response['status'] == false) {
              } else if (response['status'] == true) {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return MainPage();
                }));
              }

              ;
            }),
            child: ContainerWidget(
              text: 'Create account',
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Already have an account?',
                style: TextStyles.styleForHeadings.copyWith(fontSize: 18),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text(
                  'Long in',
                  style: TextStyles.styleForHeadings
                      .copyWith(fontSize: 18, color: AppColors.blueColor),
                ),
              ),
            ],
          ),
        ]),
      )),
    );
  }
}
