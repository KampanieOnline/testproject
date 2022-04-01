import 'package:flutter/material.dart';
import 'package:testproject/login.dart';
import 'package:testproject/register.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Strona logowania',
    home: Register(
      backgroundColor: Colors.white,
    ),
  ));
}
