import 'package:flutter/material.dart';
import 'package:shopping_ui_flutter/extension/media_query_extension.dart';
import 'package:shopping_ui_flutter/screens/home_screen/home_screen.dart';
import 'package:shopping_ui_flutter/screens/login_screen/login_screen.dart';
import 'package:shopping_ui_flutter/utils/color.dart';
import 'package:shopping_ui_flutter/widget/button_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ValueNotifier<bool> obsecure = ValueNotifier<bool>(false);
    ValueNotifier<bool> obsecure2 = ValueNotifier<bool>(false);

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/freed.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Enter Name",
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
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Enter Email",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                  height: context.screenHeight * .02,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    labelText: "Enter Number",
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.numbers,
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
                ValueListenableBuilder(
                  valueListenable: obsecure2,
                  builder: (context, value, _) => TextFormField(
                    obscureText: obsecure2.value,
                    decoration: InputDecoration(
                        labelText: "Confirm Password",
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            obsecure2.value = !obsecure2.value;
                          },
                          icon: Icon(obsecure2.value
                              ? Icons.visibility_off
                              : Icons.visibility),
                          color: Colors.black,
                        )),
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
                            builder: (context) => const HomeScreen()));
                  },
                  text: "Create Account",
                ),
                SizedBox(
                  height: context.screenHeight * .02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Already have an account?",
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
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "Login",
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
