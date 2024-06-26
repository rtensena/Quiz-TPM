import 'package:flutter/material.dart';

class DataDiri extends StatelessWidget {
  const DataDiri({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Data Diri",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            )),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 60, 81, 201),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'image/PasFoto.jpeg',
              height: 250,
              fit: BoxFit.fill,
            ),
            SizedBox(height: 12),
            Text(
              'Data Diri',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Text(
              "Nama",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Winalfan Artensena Pamuji"),
            SizedBox(height: 12),
            Text(
              "NIM",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("123210168"),
            SizedBox(height: 12),
            Text(
              "Hobi",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Text("Mancing"),
          ],
        ),
      )),
    );
  }
}
