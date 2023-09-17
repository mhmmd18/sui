import 'package:flutter/material.dart';
import 'package:sui/core.dart';

class ChangePasswordView extends StatefulWidget {
  const ChangePasswordView({Key? key}) : super(key: key);

  Widget build(context, ChangePasswordController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Change Password"),
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
                label: "Change Password",
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ChangePasswordView> createState() => ChangePasswordController();
}
