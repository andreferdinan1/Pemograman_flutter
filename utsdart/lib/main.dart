import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pelanggan App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController _namaController = TextEditingController();
  TextEditingController _kodeController = TextEditingController();
  String _jenisPelanggan = 'VIP';
  int _harga = 100000;

  void _processData() {
    // You can add your processing logic here using _kodeController.text and _namaController.text
    // For example, you can print them to the console:
    print('Kode Pelanggan: ${_kodeController.text}');
    print('Nama: ${_namaController.text}');
    print('Jenis Pelanggan: $_jenisPelanggan');
    print('Harga: $_harga');
    // Add more logic as needed

    // Navigate to a new page for further processing
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProcessDataPage(
          kodePelanggan: _kodeController.text,
          nama: _namaController.text,
          jenisPelanggan: _jenisPelanggan,
          harga: _harga,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Pelanggan'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _kodeController,
              decoration: InputDecoration(labelText: 'Kode Pelanggan'),
            ),
            TextField(
              controller: _namaController,
              decoration: InputDecoration(labelText: 'Nama'),
            ),
            SizedBox(height: 16.0),
            Text('Jenis Pelanggan:'),
            Row(
              children: [
                Radio(
                  value: 'VIP',
                  groupValue: _jenisPelanggan,
                  onChanged: (value) {
                    setState(() {
                      _jenisPelanggan = value!;
                      _harga = 100000;
                    });
                  },
                ),
                Text('VIP'),
                Radio(
                  value: 'Ekonomi',
                  groupValue: _jenisPelanggan,
                  onChanged: (value) {
                    setState(() {
                      _jenisPelanggan = value!;
                      _harga = 50000;
                    });
                  },
                ),
                Text('Ekonomi'),
              ],
            ),
            SizedBox(height: 16.0),
            Text('Harga: $_harga'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _processData,
              child: Text('Proses Data'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProcessDataPage extends StatelessWidget {
  final String kodePelanggan;
  final String nama;
  final String jenisPelanggan;
  final int harga;

  ProcessDataPage({
    required this.kodePelanggan,
    required this.nama,
    required this.jenisPelanggan,
    required this.harga,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Proses Data'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kode Pelanggan: $kodePelanggan'),
            Text('Nama: $nama'),
            Text('Jenis Pelanggan: $jenisPelanggan'),
            Text('Harga: $harga'),
            // Add more widgets for further processing/display
          ],
        ),
      ),
    );
  }
}
