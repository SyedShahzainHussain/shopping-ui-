import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui_flutter/extension/media_query_extension.dart';
import 'package:shopping_ui_flutter/widget/button_widget.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _RecoveryScreenState();
}

class _RecoveryScreenState extends State<RecoveryScreen> {
  TextEditingController resetController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  ValueNotifier<bool> obsecure = ValueNotifier<bool>(false);
  ValueNotifier<bool> obsecure2 = ValueNotifier<bool>(false);

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.screenHeight * .025,
              ),
              const Text(
                "Reset Password",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: context.screenHeight * .03,
              ),
              TextFormField(
                controller: resetController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Reset Code",
                  prefixIcon: Icon(
                    Icons.numbers,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: context.screenHeight * .01,
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
                height: context.screenHeight * .01,
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
                height: context.screenHeight * .03,
              ),
              ButtonWidget(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const RecoveryScreen()));
                },
                text: "Reset Code",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
