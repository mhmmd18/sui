import 'package:flutter/material.dart';
import 'package:sui/core.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({Key? key}) : super(key: key);

  Widget build(context, RegisterController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        actions: const [],
        leading: Container(),
        leadingWidth: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Center(
                child: Image.asset(
                  "assets/icon/icon.png",
                  width: 100.0,
                  height: 100.0,
                  fit: BoxFit.fill,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              QTextField(
                label: "Full Name",
                onChanged: (value) {},
                onSubmitted: (value) {},
              ),
              const SizedBox(
                height: 15.0,
              ),
              QTextField(
                label: "Email",
                onChanged: (value) {},
                onSubmitted: (value) {},
              ),
              const SizedBox(
                height: 15.0,
              ),
              QTextField(
                label: "Password",
                onChanged: (value) {},
                onSubmitted: (value) {},
                obscureText: true,
              ),
              const SizedBox(
                height: 20.0,
              ),
              QButton(
                label: "Create an Account",
                onPressed: () {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: '',
                  style: const TextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'By Signing up, you agree to our \n',
                      style: TextStyle(color: disabledTextColor),
                    ),
                    TextSpan(
                      text: 'Terms',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: TextStyle(
                        color: disabledTextColor,
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: primaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Text(
                "I have an account",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<RegisterView> createState() => RegisterController();
}
