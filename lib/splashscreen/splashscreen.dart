import 'package:flutter/material.dart';

class SplashScreenPage extends StatefulWidget {
  const SplashScreenPage({super.key});

  @override
  State<SplashScreenPage> createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3))
        .then((value) => {Navigator.pushNamed(context, '/signinpage')});
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffFFF6E9),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 200,
          ),
          Text(
            "FurrFriendlyFinds",
            style: TextStyle(fontSize: 40, color: Color(0xff40A2E3)),
          ),
          SizedBox(
            height: 80,
          ),
          Image(
            image: AssetImage('assets/images/logo.png'),
            width: 200,
          ),
          Image(
            image: AssetImage('assets/gif/dog_loading.gif'),
            width: 200,
          )
        ]),
      ),
    );
  }
}
