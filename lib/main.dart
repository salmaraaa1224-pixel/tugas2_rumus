import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VolumeBalok(),
    );
  }
}

class VolumeBalok extends StatefulWidget {
  @override
  State<VolumeBalok> createState() => _VolumeBalokState();
}

class _VolumeBalokState extends State<VolumeBalok> {
  final panjang = TextEditingController();
  final lebar = TextEditingController();
  final tinggi = TextEditingController();

  double hasil = 0;

  void hitungVolume() {
    double p = double.tryParse(panjang.text) ?? 0;
    double l = double.tryParse(lebar.text) ?? 0;
    double t = double.tryParse(tinggi.text) ?? 0;

    setState(() {
      hasil = p * l * t;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menghitung Volume Balok'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              'Rumus Volume Balok',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: panjang,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan Panjang',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: lebar,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan Lebar',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: tinggi,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Masukkan Tinggi',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: hitungVolume,
              child: Text('Hitung Volume'),
            ),
            SizedBox(height: 20),
            Text(
              'Hasil Volume: $hasil',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
