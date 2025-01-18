import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:furrfriendlyfinds/database/fakedatabase.dart';
import 'package:furrfriendlyfinds/database/session.dart';
import 'package:furrfriendlyfinds/database/users.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formfield = GlobalKey<FormState>();

  final fnameController = TextEditingController();
  final lnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          child: Center(
            child: Form(
              key: _formfield,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Image(
                    image: AssetImage('assets/images/logo.png'),
                    width: 160,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text("Sign up",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w500)),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'First name',
                                style: TextStyle(
                                    fontSize: 15, color: Color(0x80000000)),
                              ),
                              margin: EdgeInsets.only(bottom: 5),
                            ),
                            TextFormField(
                              controller: fnameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter First Name!";
                                }
                              },
                              obscureText: false,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: "First name",
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
                          ],
                        ),
                      ),
                      SizedBox(
                          width:
                              16), // Add spacing between the two input fields
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Last name',
                                style: TextStyle(
                                    fontSize: 15, color: Color(0x80000000)),
                              ),
                              margin: EdgeInsets.only(bottom: 5),
                            ),
                            TextFormField(
                              controller: lnameController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Enter Last Name!";
                                }
                              },
                              obscureText: false,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(8),
                                hintText: "Last name",
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Email',
                      style: TextStyle(fontSize: 15, color: Color(0x80000000)),
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
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          //<-- SEE HERE
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(fontSize: 15, color: Color(0x80000000)),
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
                        if (value != confirmPasswordController.text) {
                          return "Password Don't Match!";
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        hintText: "Password",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          //<-- SEE HERE
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Confirm Password',
                      style: TextStyle(fontSize: 15, color: Color(0x80000000)),
                    ),
                    margin: EdgeInsets.only(bottom: 5),
                  ),
                  SizedBox(
                    child: TextFormField(
                      controller: confirmPasswordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Enter Confirm Password!";
                        }
                        if (value != passwordController.text) {
                          return "Password Don't Match!";
                        }
                      },
                      obscureText: true,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        hintText: "Confirm Password",
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(width: 1, color: Colors.black),
                          //<-- SEE HERE
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 30),
                    height: 60,
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          if (_formfield.currentState!.validate()) {
                            print("Sucess");
                            signup();
                          } else {
                            print("failed");
                          }
                        },
                        child: Text(
                          "Sign Up",
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
                  Text('or sign up with',
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
                            text: 'Already have an account?   ',
                            style: TextStyle(color: Colors.black)),
                        TextSpan(
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () =>
                                  Navigator.pushNamed(context, '/signinpage'),
                            text: 'Sign in',
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
    ));
  }

  void signup() {
    String fname = fnameController.text;
    String lname = lnameController.text;
    String email = emailController.text;
    String password = passwordController.text;

    User newUser = User(
        firstName: fname, lastName: lname, email: email, password: password);

    bool succes = fakeDatabase.signUpUser(newUser);

    if (succes) {
      Session.emailSession = email;
      Navigator.pushNamed(context, '/navpage');
    } else {
      print('Sign up failed. Email already exists.');
    }
  }
}
