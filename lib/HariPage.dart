import 'package:flutter/material.dart';

class HariPage extends StatefulWidget {
  @override
  _HariPageState createState() => _HariPageState();
}

class _HariPageState extends State<HariPage> {
  final _numberController = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cek Hari",
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
              controller: _numberController,
              decoration:
                  InputDecoration(labelText: 'Silahkan Masukkan Bilangan'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: _checkHari,
              child: Text('Cek'),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Hasil: $_result',
              style: TextStyle(fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }

  void _checkHari() {
    final number = int.tryParse(_numberController.text);
    if (number == null) {
      setState(() {
        _result = 'Masukkan bilangan yang valid!';
      });
      return;
    } else if (number == 1) {
      setState(() {
        _result = 'Senin';
      });
      return;
    } else if (number == 2) {
      setState(() {
        _result = 'Selasa';
      });
      return;
    } else if (number == 3) {
      setState(() {
        _result = 'Rabu';
      });
      return;
    } else if (number == 4) {
      setState(() {
        _result = 'Kamis';
      });
      return;
    } else if (number == 5) {
      setState(() {
        _result = 'Jumat';
      });
      return;
    } else if (number == 6) {
      setState(() {
        _result = 'Sabtu';
      });
      return;
    } else if (number == 7) {
      setState(() {
        _result = 'Minggu';
      });
      return;
    } else if (number < 1 || number > 7) {
      setState(() {
        _result = 'Masukkan angka 1 - 7';
      });
      return;
    }
  }
}
