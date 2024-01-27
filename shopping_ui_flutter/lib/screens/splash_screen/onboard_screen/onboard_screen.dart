import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_ui_flutter/provider/on_board_provider.dart';
import 'package:shopping_ui_flutter/utils/utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/color.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        color: Colors.white,
        margin: const EdgeInsets.only(left: 12.0, right: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Consumer<OnBoardProvider>(
                builder: (context, value, _) =>
                    value.currentIndex == Utils.pages.length - 1
                        ? const SizedBox.shrink()
                        : TextButton(
                            onPressed: () {
                              pageController.animateToPage(
                                Utils.pages.length - 1,
                                duration: const Duration(milliseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            },
                            child: Text(
                              "Skip",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                    color: AppColors.butttonColor2,
                                  ),
                            ),
                          )),
            const Spacer(),
            SmoothPageIndicator(
                controller: pageController,
                count: Utils.pages.length,
                effect: const WormEffect(
                    dotHeight: 12,
                    dotWidth: 12,
                    activeDotColor: AppColors.butttonColor2),
                onDotClicked: (index) {
                  pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeInOut,
                  );
                }),
            const Spacer(),
            Consumer<OnBoardProvider>(
              builder: (context, value, _) => value.currentIndex ==
                      Utils.pages.length - 1
                  ? const SizedBox.shrink()
                  : TextButton(
                      onPressed: () {
                        pageController.nextPage(
                            duration: const Duration(milliseconds: 400),
                            curve: Curves.easeInOut);
                      },
                      child: Text(
                        "Next",
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              color: AppColors.butttonColor2,
                            ),
                      ),
                    ),
            ),
            const Spacer(),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Consumer<OnBoardProvider>(
          builder: (context, value, _) => PageView.builder(
            onPageChanged: (value2) => value.index = value2,
            controller: pageController,
            itemBuilder: (context, index) {
              return Utils.pages[index];
            },
            itemCount: Utils.pages.length,
          ),
        ),
      ),
    );
  }
}
