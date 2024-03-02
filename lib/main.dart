import 'package:flutter/material.dart';
import 'math_operations_page.dart';
import 'odd_even_page.dart';
import 'group_data_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            ElevatedButton(
              onPressed: () {
                if (_usernameController.text == 'admin' && _passwordController.text == 'admin') {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => MainMenu()));
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      content: Text('Username atau Password salah!'),
                    ),
                  );
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class GroupDataPage extends StatelessWidget {
  final List<Map<String, dynamic>> groupMembers = [
    {"name": "Prima Maulana Hanan", "id": "123210073"},
    {"name": "Ahlul Fadhly", "id": "123210091"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Data Kelompok')),
      body: ListView.builder(
        itemCount: groupMembers.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(groupMembers[index]["name"]),
            subtitle: Text(groupMembers[index]["id"]),
          );
        },
      ),
    );
  }
}

class MathOperationsPage extends StatefulWidget {
  @override
  _MathOperationsPageState createState() => _MathOperationsPageState();
}

class _MathOperationsPageState extends State<MathOperationsPage> {
  final _num1Controller = TextEditingController();
  final _num2Controller = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Penjumlahan dan Pengurangan')),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _num1Controller,
              decoration: InputDecoration(labelText: 'Angka Pertama'),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: _num2Controller,
              decoration: InputDecoration(labelText: 'Angka Kedua'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () => _calculate(true),
              child: Text('Jumlahkan'),
            ),
            ElevatedButton(
              onPressed: () => _calculate(false),
              child: Text('Kurangkan'),
            ),
            Text(
              'Hasil: $_result',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  void _calculate(bool isAddition) {
    final num1 = double.tryParse(_num1Controller.text) ?? 0;
    final num2 = double.tryParse(_num2Controller.text) ?? 0;
    final result = isAddition ? num1 + num2 : num1 - num2;
    setState(() {
      _result = result.toString();
    });
  }
}

class OddEvenPage extends StatefulWidget {
  @override
  _OddEvenPageState createState() => _OddEvenPageState();
}

class _OddEvenPageState extends State<OddEvenPage> {
  final _numberController = TextEditingController();
  String _result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cek Ganjil Genap')),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _numberController,
              decoration: InputDecoration(labelText: 'Masukkan Bilangan'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: _checkOddEven,
              child: Text('Cek'),
            ),
            Text(
              'Hasil: $_result',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }

  void _checkOddEven() {
    final number = int.tryParse(_numberController.text);
    if (number == null) {
      setState(() {
        _result = 'Masukkan bilangan yang valid!';
      });
      return;
    }

    setState(() {
      _result = number % 2 == 0 ? 'Bilangan Genap' : 'Bilangan Ganjil';
    });
  }
}

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Menu'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text('Data Kelompok'),
            onTap: () {
              // Tampilkan data kelompok
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => GroupDataPage()));
            },
          ),
          ListTile(
            title: Text('Penjumlahan dan Pengurangan'),
            onTap: () {
              // Navigasi ke halaman penjumlahan dan pengurangan
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => MathOperationsPage()));
            },
          ),
          ListTile(
            title: Text('Cek Ganjil Genap'),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => OddEvenPage()));
            },
          ),
        ],
      ),
    );
  }
}
