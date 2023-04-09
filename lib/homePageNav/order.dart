import 'package:flutter/material.dart';

class PesanScreen extends StatefulWidget {
  @override
  _PesanScreenState createState() => _PesanScreenState();
}

class _PesanScreenState extends State<PesanScreen> {
  String? _jenisLayanan;
  int? _jumlahUnit;
  String? _tipeAC;
  String? _deskripsiTambahan;

  List<String> _jenisLayananList = [
    'Cuci AC',
    'Perbaikan AC',
    'Bongkar & Pasang AC'
  ];

  List<String> _tipeACList = ['Non-Inverter', 'Inverter', 'Standing Floor'];

  List<Widget> _layananList = [];

  double _totalHarga = 0;

  @override
  void initState() {
    super.initState();
    _addLayanan();
  }

  void _addLayanan() {
    setState(() {
      _layananList = List.from(_layananList)
        ..add(
          Column(
            children: [
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _jenisLayanan,
                items: _jenisLayananList
                    .map((jenisLayanan) => DropdownMenuItem(
                          child: Text(jenisLayanan),
                          value: jenisLayanan,
                        ))
                    .toList(),
                hint: Text('Jenis Layanan'),
                onChanged: (newValue) {
                  setState(() {
                    _jenisLayanan = newValue;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Jumlah Unit',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
                onChanged: (newValue) {
                  setState(() {
                    if (newValue.isNotEmpty) {
                      setState(() {
                        _jumlahUnit = int.parse(newValue);
                      });
                    }
                  });
                },
              ),
              SizedBox(height: 16.0),
              DropdownButtonFormField<String>(
                value: _tipeAC,
                items: _tipeACList
                    .map((tipeAC) => DropdownMenuItem(
                          child: Text(tipeAC),
                          value: tipeAC,
                        ))
                    .toList(),
                hint: Text('Tipe AC'),
                onChanged: (newValue) {
                  setState(() {
                    _tipeAC = newValue;
                  });
                },
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Deskripsi Tambahan',
                  border: OutlineInputBorder(),
                ),
                onChanged: (newValue) {
                  setState(() {
                    _deskripsiTambahan = newValue;
                  });
                },
              ),
            ],
          ),
        );
    });
  }

  double _hitungTotalHarga() {
    double hargaPerUnit = 0;

    switch (_jenisLayanan) {
      case 'Cuci AC':
        hargaPerUnit = 70000;
        break;
      case 'Perbaikan AC':
        hargaPerUnit = 100000;
        break;
      case 'Bongkar & Pasang AC':
        hargaPerUnit = 150000;
        break;
    }

    if (_tipeAC == 'Inverter') {
      hargaPerUnit += 10000;
    }

    if (_tipeAC == 'Standing Floor') {
      hargaPerUnit *= 1.0;
    }
    if (_jumlahUnit != null && _jumlahUnit! > 0) {
      _totalHarga = hargaPerUnit * _jumlahUnit!;
    }

    return _totalHarga;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Pemesanan',
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ..._layananList,
                SizedBox(height: 16.0),
                ElevatedButton(
                  onPressed: _addLayanan,
                  child: Text('Tambah Layanan'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    onPrimary: Color.fromARGB(255, 101, 203, 233),
                  ),
                ),
                SizedBox(height: 16.0),
                Text(
                    'Total Harga: Rp ${_hitungTotalHarga().toStringAsFixed(0)}'),
                ElevatedButton(
                  onPressed: () {
                    // Simpan data pemesanan ke database atau lakukan pengiriman email
                    // Berdasarkan data yang diisi oleh pengguna
                  },
                  child: Text('Pesan'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 101, 203, 233),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
