import 'package:flutter/material.dart';
import 'package:flutter_studi_kasus_3/detail_page.dart';
import 'package:flutter_studi_kasus_3/makanan.dart';

class ListItem extends StatelessWidget {
  final Makanan makanan;

  const ListItem({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 178, 178, 178),
            offset: Offset(1.0, 2.0),
            blurRadius: 6.0,
          ),
        ],
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DetailPage(makanan: makanan),
            ),
          );
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              makanan.gambar,
              height: 75,
              width: 75,
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    makanan.nama,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    makanan.deskripsi,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    makanan.harga,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
