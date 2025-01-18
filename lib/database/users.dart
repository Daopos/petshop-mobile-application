import 'package:flutter/material.dart';

class User {
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  User(
      {required this.firstName,
      required this.lastName,
      required this.email,
      required this.password});

  bool authenticate(String enteredPassword) {
    return password == enteredPassword;
  }
}
