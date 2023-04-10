import 'package:flutter/material.dart';

class PaymentMethodPage extends StatefulWidget {
  @override
  _PaymentMethodPageState createState() => _PaymentMethodPageState();
}

class _PaymentMethodPageState extends State<PaymentMethodPage> {
  String? _selectedPaymentMethod;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Metode Pembayaran',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white12,
        shadowColor: Colors.transparent,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 0, 25),
            child: Text("Pilih Metode Pembayaran yang tersedia"),
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text("Tunai  :"),
              )),
          Padding(
            padding: EdgeInsets.only(left: 7),
            child: ListTile(
              leading: Image.asset(
                'assets/images/cash.png',
                width: 32,
                height: 32,
              ),
              title: Text('\tBayar ditempat'),
              trailing: Radio(
                value: 'cash',
                groupValue: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value;
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text("Non-Tunai  :"),
              )),
          ListTile(
            leading: Image.asset(
              'assets/images/dana.png',
              width: 44,
              height: 44,
            ),
            title: Text('\tDana'),
            trailing: Radio(
              value: 'dana',
              groupValue: _selectedPaymentMethod,
              onChanged: (value) {
                setState(() {
                  _selectedPaymentMethod = value;
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7),
            child: ListTile(
              leading: Image.asset(
                'assets/images/gopay.png',
                width: 30,
                height: 30,
              ),
              title: Text('Go-Pay'),
              trailing: Radio(
                value: 'gopay',
                groupValue: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value;
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 7),
            child: ListTile(
              leading: Image.asset(
                'assets/images/ovo.png',
                width: 30,
                height: 30,
              ),
              title: Text('OVO'),
              trailing: Radio(
                value: 'ovo',
                groupValue: _selectedPaymentMethod,
                onChanged: (value) {
                  setState(() {
                    _selectedPaymentMethod = value;
                  });
                },
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Lakukan sesuatu ketika tombol "Bayar" ditekan
              if (_selectedPaymentMethod != null) {
                // Lakukan sesuatu jika metode pembayaran dipilih
              } else {
                // Tampilkan pesan kesalahan jika metode pembayaran belum dipilih
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Pilih metode pembayaran terlebih dahulu'),
                  ),
                );
              }
            },
            child: Text('Simpan'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 101, 203, 233),
            ),
          ),
        ],
      ),
    );
  }
}
