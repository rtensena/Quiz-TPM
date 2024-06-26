import 'package:flutter/material.dart';

class Kubus extends StatefulWidget {
  @override
  _KubusState createState() => _KubusState();
}

class _KubusState extends State<Kubus> {
  final _sisi = TextEditingController();
  String _resultVol = '';
  String _resultKeliling = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kubus",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Color.fromARGB(255, 60, 81, 201),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 300),
            TextField(
              controller: _sisi,
              decoration: InputDecoration(labelText: 'Sisi'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () => _calculate(),
              child: Text('Hitung Volume dan Keliling'),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Hasil Volume : $_resultVol',
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Hasil Keliling : $_resultKeliling',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }

  void _calculate() {
    final sisi = double.tryParse(_sisi.text) ?? 0;
    final resultVol = 4 * sisi;
    final resultKeliling = 12 * sisi;
    setState(() {
      _resultVol = resultVol.toString();
      _resultKeliling = resultKeliling.toString();
    });
  }
}
