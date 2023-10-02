//import 'package:emart_app/views/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_scanner.dart';
//import 'consts/consts.dart';
//import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //we are using GetX so we have to change this material app into the getmaterialapp

    return MaterialApp(
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      )),
      home: const QRScanner(),
      debugShowCheckedModeBanner: false,
      title: "QR Scanner",
    );
  }
}
