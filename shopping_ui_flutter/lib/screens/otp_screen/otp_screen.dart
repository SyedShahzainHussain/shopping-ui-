import 'package:flutter/material.dart';
import 'package:shopping_ui_flutter/extension/media_query_extension.dart';
import 'package:shopping_ui_flutter/otp_verify_screen/otp_verify_screen.dart';
import 'package:shopping_ui_flutter/widget/button_widget.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.black,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
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
                  height: context.screenHeight * .025,
                ),
                const Text(
                  "Please enter your number. You will receiver a OTP to create or set a new password via number",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                SizedBox(
                  height: context.screenHeight * .03,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Enter Number",
                  ),
                ),
                SizedBox(
                  height: context.screenHeight * .03,
                ),
                ButtonWidget(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OtpVerifyScreen()));
                    },
                    text: "Send Code"),
              ],
            ),
          ),
        ));
  }
}
