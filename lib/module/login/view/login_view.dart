import 'package:flutter/material.dart';
import 'package:sui/core.dart';
import 'package:sui/shared/theme/theme_color.dart';
import 'package:sui/shared/widget/button/button.dart';
import 'package:sui/shared/widget/textfield/textfield.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome",
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "to MagicBox",
                          style: TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Write less do more...",
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Image.asset(
                    "assets/icon/icon.png",
                    width: 74.0,
                    height: 74.0,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
              const Spacer(),
              QTextField(
                label: "Email",
                prefixIcon: Icons.email,
                autoFocus: true,
                onChanged: (value) => {},
                onSubmitted: (value) => {},
              ),
              const SizedBox(
                height: 10.0,
              ),
              QTextField(
                label: "Password",
                prefixIcon: Icons.visibility,
                onChanged: (value) => {},
                onSubmitted: (value) => {},
                obscureText: true,
              ),
              const SizedBox(
                height: 15.0,
              ),
              QButton(
                label: "Login",
                onPressed: () {},
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
              const Spacer(),
              QButton(
                label: "Sign Up",
                onPressed: () {},
                disabled: true,
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
