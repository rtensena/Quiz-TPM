import 'package:flutter/material.dart';

class HitungKelilingTrapesium extends StatefulWidget {
  @override
  _HitungKelilingTrapesiumState createState() =>
      _HitungKelilingTrapesiumState();
}

class _HitungKelilingTrapesiumState extends State<HitungKelilingTrapesium> {
  final _sisiA = TextEditingController();
  final _sisiB = TextEditingController();
  final _sisiC = TextEditingController();
  final _sisiD = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Keliling Trapesium",
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
              controller: _sisiC,
              decoration: InputDecoration(labelText: 'Sisi C'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _sisiD,
              decoration: InputDecoration(labelText: 'Sisi D'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () => _calculate(),
              child: Text('Hitung Keliling'),
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
    final sisiC = double.tryParse(_sisiC.text) ?? 0;
    final sisiD = double.tryParse(_sisiD.text) ?? 0;
    final result = sisiA + sisiB + sisiC + sisiD;
    setState(() {
      _result = result.toString();
    });
  }
}
