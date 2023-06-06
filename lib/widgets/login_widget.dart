import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_ideal_store/service/login_service.dart';

import '../pages/gender_choice.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({super.key});

  @override
  State<LoginWidget> createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  LoginService loginService = LoginService();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  late String enteredEmail;
  late String enteredPassword;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Email or Phone Number",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        const SizedBox(height: 10),
        TextField(
          controller: emailController,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 1.5, color: Colors.red),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 1.5, color: Colors.red),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 1.5, color: Colors.red),
              ),
              hintText: "heidi@gmail.com"),
          cursorColor: Colors.red,
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          "Password",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        const SizedBox(height: 10),
        TextField(
          controller: passwordController,
          obscureText: true,
          obscuringCharacter: '*',
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 1.5, color: Colors.red),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 1.5, color: Colors.red),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(width: 1.5, color: Colors.red),
              ),
              hintText: "*********"),
          cursorColor: Colors.red,
        ),
        const SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.only(left: 200),
          child: TextButton(
              onPressed: () {},
              child: const Text(
                "Forget Password?",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.black),
              )),
        ),
        const SizedBox(height: 25),
        SizedBox(
          width: 350,
          height: 55,
          child: ElevatedButton(
            onPressed: () {
              setState(() {});
              if (emailController.text.isNotEmpty &&
                  passwordController.text.isNotEmpty) {
                enteredEmail = emailController.text;
                enteredPassword = passwordController.text;
                debugPrint(enteredEmail + " " + enteredPassword);
                var data =
                    loginService.loginMethod(enteredEmail, enteredPassword);
                data.then((value) => debugPrint(value));
              }
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text("Sign In",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ),
      ],
    );
  }
}
