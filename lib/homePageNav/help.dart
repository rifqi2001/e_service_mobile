import 'package:flutter/material.dart';
import 'package:e_service/widget/searchBar.dart';

class BantuanScreen extends StatefulWidget {
  @override
  _BantuanScreenState createState() => _BantuanScreenState();
}

class _BantuanScreenState extends State<BantuanScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bantuan',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white12,
        shadowColor: Colors.transparent,
      ),
      body: Column(
        children: <Widget>[
          SearchBar(),
          Expanded(
              child: Column(
            children: <Widget>[
              Padding(padding: EdgeInsets.all(10.0)),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(10.0)),
                  Icon(
                    Icons.warning,
                    color: Colors.red,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Masalah pada aplikasi',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                  Icon(
                    Icons.person_2,
                    color: Colors.yellow,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Tentang akun saya',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                  Icon(
                    Icons.mobile_friendly,
                    color: Colors.green,
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Info pelayanan',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10.0)),
                  Icon(
                    Icons.phone_forwarded,
                    color: Colors.blue[200],
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Kontak Kami',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  )
                ],
              )
            ],
          ))
        ],
      ),
    );
  }
}
