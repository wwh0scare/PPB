import 'package:flutter/material.dart';
import 'package:flutter_studi_kasus_3/home_page.dart';
import 'package:flutter_studi_kasus_3/styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: headerBackColor,
        scaffoldBackgroundColor: pageBgColor,
        textTheme: const TextTheme(
          headlineLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
          bodyLarge: TextStyle(fontSize: 16, color: Colors.black54),
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: headerBackColor,
          elevation: 10,
          shadowColor: Colors.black45,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)),
          ),
          titleTextStyle: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Kuliner Nusantara"),
            centerTitle: true,
          ),
          body: Stack(
            children: [
              // Background Gradient
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [pageBgColor, Colors.white],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: HomePage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
