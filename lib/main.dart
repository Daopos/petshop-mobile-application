import 'package:flutter/material.dart';
import 'package:furrfriendlyfinds/mainpages/cart.dart';
import 'package:furrfriendlyfinds/mainpages/home.dart';
import 'package:furrfriendlyfinds/mainpages/petmart.dart';
import 'package:furrfriendlyfinds/mainpages/petmartpages/petshop.dart';
import 'package:furrfriendlyfinds/mainpages/profile.dart';
import 'package:furrfriendlyfinds/mainpages/service.dart';
import 'package:furrfriendlyfinds/mainpages/servicepages/serivceapp.dart';
import 'package:furrfriendlyfinds/navigation/navigationbar.dart';
import 'package:furrfriendlyfinds/splashscreen/splashscreen.dart';
import 'package:furrfriendlyfinds/startpages/signin.dart';
import 'package:furrfriendlyfinds/startpages/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreenPage(),
      routes: {
        '/signinpage': (context) => const SignInPage(),
        '/signuppage': (context) => const SignUpPage(),
        '/homepage': (context) => const HomePage(),
        '/navpage': (context) => const NavigationBarPage(),
        '/petmartpage': (context) => const PetMartPage(),
        '/servicepage': (context) => const ServicePage(),
        '/profilepage': (context) => const ProfilePage(),
        '/serviceapppage': (context) => const ServiceAppPage(),
        '/petshoppage': (context) => const PetShopPage(),
        '/cartpage': (context) => const CartPage()
      },
    );
  }
}
