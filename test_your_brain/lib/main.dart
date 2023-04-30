import 'package:flutter/material.dart';
import 'package:test_your_brain/screens/game_screen.dart';
import 'package:test_your_brain/screens/start_screen.dart';
import 'package:test_your_brain/screens/welcome_page.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:test_your_brain/screens/final_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedSplashScreen(
          pageTransitionType: PageTransitionType.topToBottom,
          backgroundColor: Color.fromARGB(255, 97, 119, 156),
          splashTransition: SplashTransition.rotationTransition,
          splashIconSize: 200,
          splash: CircleAvatar(
            radius: 130,
            backgroundImage: AssetImage("images/logo_image.jpeg"),
          ),
          nextScreen: const WelcomePage()),
      debugShowCheckedModeBanner: false,
      title: 'test_your_brain',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 83, 49, 157),
        ),
      ),

      //home: WelcomePage(),

      //route to other pages(widgets)
      routes: {
        WelcomePage.routeName: (context) => const WelcomePage(),
        StartScreen.routeName: (context) => const StartScreen(),
        GameScreen.routeName: (context) => const GameScreen(),
        FinalScreen.routeName:(context) =>  FinalScreen(),
      },
     // initialRoute: FinalScreen.routeName,
    );
  }
}
