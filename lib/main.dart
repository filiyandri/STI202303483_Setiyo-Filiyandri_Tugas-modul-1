import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pemisahan Widget ke Fungsi'),
          backgroundColor: Colors.indigo,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              teksJudul(),
              SizedBox(height: 20),
              tombolUtama(context),
            ],
          ),
        ),
      ),
    );
  }

  // 🔸 Fungsi untuk membuat teks
  Widget teksJudul() {
    return Text(
      'Selamat Datang di Aplikasi Flutter!',
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
      textAlign: TextAlign.center,
    );
  }

  // 🔸 Fungsi untuk membuat tombol
  Widget tombolUtama(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Tombol ditekan!')),
        );
      },
      child: Text('Tekan Saya'),
    );
  }
}
