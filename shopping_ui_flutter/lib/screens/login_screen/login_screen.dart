import 'package:flutter/material.dart';
import 'package:shopping_ui_flutter/extension/media_query_extension.dart';
import 'package:shopping_ui_flutter/screens/forgot_password/forgot_password_sceen.dart';
import 'package:shopping_ui_flutter/screens/home_screen/home_screen.dart';
import 'package:shopping_ui_flutter/screens/main_screen/main_screen.dart';
import 'package:shopping_ui_flutter/screens/sign_up_screen/sign_up_screen.dart';
import 'package:shopping_ui_flutter/utils/color.dart';

import '../../widget/button_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> obsecure = ValueNotifier<bool>(false);

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: context.screenHeight / 9,
            ),
            Image.asset("assets/freed.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Enter Email",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.person,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: context.screenHeight * .02,
                ),
                ValueListenableBuilder(
                  valueListenable: obsecure,
                  builder: (context, value, _) => TextFormField(
                    obscureText: obsecure.value,
                    decoration: InputDecoration(
                        labelText: "Enter Password",
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            obsecure.value = !obsecure.value;
                          },
                          icon: Icon(obsecure.value
                              ? Icons.visibility_off
                              : Icons.visibility),
                          color: Colors.black,
                        )),
                  ),
                ),
                SizedBox(
                  height: context.screenHeight * .02,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ForgotPassword()));
                  },
                  child: const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        color: AppColors.butttonColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: context.screenHeight * .04,
                ),
                ButtonWidget(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainScreen()));
                  },
                  text: "Login",
                ),
                SizedBox(
                  height: context.screenHeight * .02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Dont have an account?",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          color: AppColors.butttonColor,
                          fontSize: 15,
                        ),
                      ),
                    )
                  ],
                ),
              ]),
            ),
          ],
        )),
      ),
    );
  }
}
