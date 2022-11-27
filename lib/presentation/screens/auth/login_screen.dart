import 'package:flutter/material.dart';
import 'package:flutter_demo_project/presentation/screens/auth/register_screen.dart';
import 'package:flutter_demo_project/presentation/widgets/bottom_navigation.dart';
import '../../../utilities/constants/app_styles.dart';
import '../../../utilities/constants/class_styles.dart';
import '../../widgets/button_container.dart';
import '../../widgets/text_field_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
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
            "Long in to Grad Way",
            style: TextStyles.styleForHeadings
                .copyWith(color: AppColors.blackColor),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: TextFieldWidget(
                iconData: Icons.email,
                text: 'Enter your email',
                controller: emailController,
                isTrue: false),
          ),
          TextFieldWidget(
            iconData: Icons.lock_outlined,
            text: 'Enter your password',
            controller: emailController,
            isTrue: true,
            icon: Icons.remove_red_eye,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 3.5,
          ),
          GestureDetector(
            onTap: (() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MainPage()));
            }),
            child: ContainerWidget(
              text: "Long in",
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dont have an account yet?',
                style: TextStyles.styleForHeadings.copyWith(fontSize: 18),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => RegisterScreen()));
                },
                child: Text(
                  'Create one.',
                  style: TextStyles.styleForHeadings
                      .copyWith(fontSize: 18, color: AppColors.blueColor),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {},
            child: Text(
              'Forgot password?',
              style: TextStyles.styleForHeadings
                  .copyWith(fontSize: 18, color: AppColors.blueColor),
            ),
          ),
        ]),
      )),
    );
  }
}
