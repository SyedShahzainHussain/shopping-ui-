import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:shopping_ui_flutter/provider/on_board_provider.dart';
import 'package:shopping_ui_flutter/screens/splash_screen/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => OnBoardProvider())
      ],
      child: MaterialApp(
        title: 'ECommerce Shopping',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: const Color(0xFFEF6969)),
        home: const SplashScreen(),
      ),
    );
  }
}
