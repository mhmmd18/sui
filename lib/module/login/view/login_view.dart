import 'package:flutter/material.dart';
import 'package:sui/core.dart';

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
                onPressed: () => Get.to(const MainNavigationBarView()),
              ),
              const SizedBox(
                height: 10.0,
              ),
              InkWell(
                onTap: () => Get.to(const ForgotPasswordView()),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: primaryColor),
                ),
              ),
              const Spacer(),
              QButton(
                label: "Sign Up",
                color: disabledColor,
                textColor: disabledTextColor,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterView()),
                ),
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
