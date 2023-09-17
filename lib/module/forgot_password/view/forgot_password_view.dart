import 'package:flutter/material.dart';
import 'package:sui/core.dart';

class ForgotPasswordView extends StatefulWidget {
  const ForgotPasswordView({Key? key}) : super(key: key);

  Widget build(context, ForgotPasswordController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Forgot Password"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              QTextField(
                label: "Email",
                onChanged: (value) {},
                onSubmitted: (value) {},
              ),
              const SizedBox(
                height: 20.0,
              ),
              QButton(
                label: "Forgot Password",
                onPressed: (value) {},
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ForgotPasswordView> createState() => ForgotPasswordController();
}
