import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_ui_flutter/screens/cart_screen/cart_screen.dart';
import 'package:shopping_ui_flutter/screens/home_screen/home_screen.dart';
import 'package:shopping_ui_flutter/utils/color.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(
        index: currentIndex,
        children: const [
          HomeScreen(),
          CarScreen(),
          Text("hello2 "),
          Text("hello3 "),
          Text("hello4 "),
        ],
      ),
      bottomNavigationBar: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            child: Container(
              margin: const EdgeInsets.all(12.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: BottomNavigationBar(
                    currentIndex: currentIndex,
                    backgroundColor: Colors.black.withOpacity(0.9),
                    unselectedItemColor: Colors.white,
                    selectedItemColor: AppColors.butttonColor2,
                    type: BottomNavigationBarType.fixed,
                    onTap: (value) {
                      setState(() {
                        currentIndex = value;
                      });
                    },
                    items: const [
                      BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.home), label: "Home"),
                      BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.cart), label: "Cart"),
                      BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.heart), label: "Favourite"),
                      BottomNavigationBarItem(
                          icon: Icon(CupertinoIcons.profile_circled),
                          label: "Profile"),
                    ]),
              ),
            ),
          ),
          Positioned(
            top: -30,
            right: 0,
            left: 0,
            child: Container(
              width: 60,
              height: 60,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  margin: const EdgeInsets.all(3.0),
                  width: 50,
                  height: 50,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: AppColors.butttonColor2,
                  ),
                  child: const Icon(
                    Icons.qr_code,
                    size: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
