import 'package:flutter/material.dart';
import 'package:kuiz/HitungKelilingTrapesium.dart';
import 'package:kuiz/HitungLuasTrapesium.dart';

class Trapesium extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Trapesium",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 60, 81, 201),
        centerTitle: true,
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 350,
          ),
          ListTile(
            title: Text('Hitung Luas', textAlign: TextAlign.center),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HitungLuasTrapesium()));
            },
          ),
          ListTile(
            title: Text('Hitung Keliling', textAlign: TextAlign.center),
            onTap: () {
              // Navigasi ke halaman penjumlahan dan pengurangan
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HitungKelilingTrapesium()));
            },
          ),
        ],
      ),
    );
  }
}
