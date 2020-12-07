import 'package:flutter/material.dart';
import 'package:house/services/auth.dart';
import 'package:house/services/redirection.dart';
import 'package:house/wrapper.dart';
import 'package:provider/provider.dart';
import 'models/user.dart';
import 'splash_screen.dart';

void main() => runApp(
  MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RedirectionService().builder,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(0,0,145,1),
        accentColor: Color.fromRGBO(255,0,15,1),
      ),
    );
  }
}