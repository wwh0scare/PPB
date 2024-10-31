import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final kuliner = <String, String>{};

  MainApp({super.key}) {
    kuliner['name'] = 'Bubur';
    kuliner['deskripsi'] = 'Nasi lembek yang dicampur dengan kuah opor dan disajikan dengan topping ayam, telur, dan lain-lain';
    kuliner['harga'] = 'Rp 8000';
    kuliner['image'] = 'bubur.jpg';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Kuliner",
      home: Scaffold(
        appBar: AppBar(title: Text("Aplikasi Kuliner")),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: double.infinity,
                decoration: BoxDecoration(color: Colors.black),
                child: Text(
                  kuliner['name'] ?? '',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
                ),
              ),
              Image(image: AssetImage('assets/${kuliner["image"] ?? ''}')),
              SizedBox(height: 20), // Adding space between the image and the button
              Row(
                mainAxisAlignment: MainAxisAlignment.center, // Centering the button
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Icon(Icons.alternate_email),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green[900],
                      foregroundColor: Colors.white,
                      textStyle: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
