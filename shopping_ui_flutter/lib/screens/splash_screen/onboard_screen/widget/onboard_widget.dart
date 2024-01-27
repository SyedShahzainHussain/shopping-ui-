import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_ui_flutter/extension/media_query_extension.dart';
import 'package:shopping_ui_flutter/screens/login_screen/login_screen.dart';
import 'package:shopping_ui_flutter/utils/color.dart';
import 'package:shopping_ui_flutter/utils/utils.dart';

import '../../../../provider/on_board_provider.dart';
import '../../../../widget/button_widget.dart';

class OnBoardingPage extends StatelessWidget {
  final String image;
  final String text;
  final String message;
  const OnBoardingPage({
    Key? key,
    required this.image,
    required this.text,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: context.screenHeight * .02,
            ),
            Image.asset(
              image,
              width: 200,
            ),
            Text(
              message,
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: context.screenHeight * .05,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                    color: Colors.black,
                  ),
            ),
            SizedBox(
              height: context.screenHeight * .05,
            ),
            Consumer<OnBoardProvider>(
                builder: (context, value, _) => value.currentIndex ==
                        Utils.pages.length - 1
                    ? ButtonWidget(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        text: "Let's Shop")
                    : const SizedBox.shrink()),
          ],
        ),
      ),
    );
  }
}
