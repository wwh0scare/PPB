import 'package:flutter/material.dart';
import 'package:flutter_studi_kasus_3/list_item.dart';
import 'package:flutter_studi_kasus_3/makanan.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemCount: listMakanan.length,
        padding: const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return ListItem(makanan: listMakanan[index]);
        },
      ),
    );
  }
}
