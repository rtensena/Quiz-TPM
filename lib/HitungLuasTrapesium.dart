import 'package:flutter/material.dart';

class HitungLuasTrapesium extends StatefulWidget {
  @override
  _HitungLuasTrapesiumState createState() => _HitungLuasTrapesiumState();
}

class _HitungLuasTrapesiumState extends State<HitungLuasTrapesium> {
  final _sisiA = TextEditingController();
  final _sisiB = TextEditingController();
  final _tinggi = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Luas Trapesium",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 60, 81, 201),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _sisiA,
              decoration: InputDecoration(labelText: 'Sisi A'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _sisiB,
              decoration: InputDecoration(labelText: 'Sisi B'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _tinggi,
              decoration: InputDecoration(labelText: 'Tinggi'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () => _calculate(),
              child: Text('Hitung Luas'),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Hasil : $_result',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }

  void _calculate() {
    final sisiA = double.tryParse(_sisiA.text) ?? 0;
    final sisiB = double.tryParse(_sisiB.text) ?? 0;
    final tinggi = double.tryParse(_tinggi.text) ?? 0;
    final result = 1 / 2 * (sisiA + sisiB) * tinggi;
    setState(() {
      _result = result.toString();
    });
  }
}
