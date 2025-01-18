import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:furrfriendlyfinds/database/fakedatabase.dart';
import 'package:furrfriendlyfinds/database/session.dart';
import 'package:furrfriendlyfinds/database/users.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final _formfield = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return new PopScope(
      canPop: false,
      child: Scaffold(
          body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Center(
              child: Form(
                key: _formfield,
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Image(
                      image: AssetImage('assets/images/logo.png'),
                      width: 160,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text("Sign in",
                          style: TextStyle(
                              fontSize: 35, fontWeight: FontWeight.w500)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email',
                        style:
                            TextStyle(fontSize: 15, color: Color(0x80000000)),
                      ),
                      margin: EdgeInsets.only(bottom: 5),
                    ),
                    SizedBox(
                      child: TextFormField(
                        controller: emailController,
                        validator: (value) {
                          final bool emailValid = RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value!);

                          if (value.isEmpty) {
                            return "Enter Email!";
                          }
                          if (!emailValid) {
                            return "Enter Valid Email";
                          }
                        },
                        obscureText: false,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          hintText: "Email",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password',
                        style:
                            TextStyle(fontSize: 15, color: Color(0x80000000)),
                      ),
                      margin: EdgeInsets.only(bottom: 5),
                    ),
                    SizedBox(
                      child: TextFormField(
                        controller: passwordController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Enter Password!";
                          }
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(8),
                          hintText: "Password",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(width: 1, color: Colors.black),
                            //<-- SEE HERE
                          ),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 14),
                      alignment: Alignment.bottomRight,
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(color: Color(0xff0D9276)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      height: 60,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formfield.currentState!.validate()) {
                              login();
                            } else {
                              print("failed");
                            }
                          },
                          child: Text(
                            "Sign In",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                          style: ElevatedButton.styleFrom(
                              elevation: 10,
                              backgroundColor: Color(0xff0D9276),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)))),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text('or sign in with',
                        style: TextStyle(color: Color(0x80000000))),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 140,
                          height: 60,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: SvgPicture.asset(
                                'assets/svg/google.svg',
                                width: 40,
                              ),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  side: const BorderSide(
                                    width: 1.0,
                                    color: Colors.black,
                                  ),
                                  backgroundColor: Colors.white)),
                        ),
                        SizedBox(
                          width: 140,
                          height: 60,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: SvgPicture.asset(
                                'assets/svg/facebook.svg',
                                width: 40,
                              ),
                              style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  side: const BorderSide(
                                    width: 1.0,
                                    color: Colors.black,
                                  ),
                                  backgroundColor: Colors.white)),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: 'Don\'t have an account?   ',
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              recognizer: new TapGestureRecognizer()
                                ..onTap = () =>
                                    Navigator.pushNamed(context, '/signuppage'),
                              text: 'Sign up',
                              style: TextStyle(color: Color(0xff0D9276))),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            )),
      )),
    );
  }

  void login() {
    String email = emailController.text;
    String password = passwordController.text;

    User? loggedInUser = fakeDatabase.loginUser(email, password);

    if (loggedInUser != null) {
      Session.emailSession = email;
      Navigator.pushNamed(context, '/navpage');
    } else {
      print('Sign up failed. Email already exists.');
      Fluttertoast.showToast(
          msg: "Check your email or password.",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.BOTTOM,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.black,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}
