import 'package:flutter/material.dart';
import 'package:flutter_studi_kasus_3/makanan.dart';

class DetailPage extends StatelessWidget {
  final Makanan makanan;

  const DetailPage({super.key, required this.makanan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF3E0),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  child: Image.asset(
                    makanan.gambar,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.black54,
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back, color: Colors.white),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 16.0,
                  left: 16.0,
                  right: 16.0,
                  child: Center(
                    child: Text(
                      makanan.nama,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            offset: Offset(0, 4),
                            blurRadius: 8.0,
                            color: Colors.black38,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  _buildInfoCard(Icons.access_time_filled, "Waktu Buka", makanan.waktubuka, Colors.amber),
                  _buildInfoCard(Icons.local_fire_department, "Kalori", makanan.kalori, Colors.red),
                  _buildInfoCard(Icons.monetization_on, "Harga", makanan.harga, Colors.green),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                makanan.detail,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  height: 1.5,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: const Text(
                'Galeri Foto',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
            ),
            SizedBox(
              height: 150,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: makanan.gambarlain.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        makanan.gambarlain[index],
                        width: 140,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: const Text(
                'Bahan Racikan',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black87),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: makanan.bahan.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: Offset(4, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(makanan.bahan[index].values.first, width: 50),
                        const SizedBox(height: 8),
                        Text(
                          makanan.bahan[index].keys.first,
                          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(IconData icon, String label, String info, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 8,
            offset: Offset(4, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(icon, color: color, size: 28),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.black87),
          ),
          const SizedBox(height: 4),
          Text(
            info,
            style: const TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
