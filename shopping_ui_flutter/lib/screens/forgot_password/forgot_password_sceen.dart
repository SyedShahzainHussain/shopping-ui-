import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui_flutter/extension/media_query_extension.dart';
import 'package:shopping_ui_flutter/screens/otp_screen/otp_screen.dart';
import 'package:shopping_ui_flutter/screens/recovery_screen/recovery_screen.dart';
import 'package:shopping_ui_flutter/utils/color.dart';
import 'package:shopping_ui_flutter/widget/button_widget.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(
                height: context.screenHeight * .025,
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: context.screenHeight * .01,
              ),
              const Text(
                "Please enter your email address. You will receiver a link to create or set a new password via email",
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              SizedBox(
                height: context.screenHeight * .03,
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: "Email",
                    suffix: InkWell(
                        onTap: () {
                          setState(() {
                            emailController.clear();
                          });
                        },
                        child: const Icon(CupertinoIcons.multiply))),
              ),
              SizedBox(
                height: context.screenHeight * .03,
              ),
              ButtonWidget(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RecoveryScreen()));
                },
                text: "Send Code",
              ),
              SizedBox(
                height: context.screenHeight * .02,
              ),
              Column(
                children: [
                  Text(
                    "OR",
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(color: Colors.black),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OtpScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Verify Using Number",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: AppColors.butttonColor2,
                              fontWeight: FontWeight.bold,
                            ),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
