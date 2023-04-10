import 'package:flutter/material.dart';

class Code extends StatefulWidget {
  @override
  _CodeState createState() => _CodeState();
}

class _CodeState extends State<Code> {
  String promoCode = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white12,
        shadowColor: Colors.transparent,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            'assets/images/code.jpg',
            width: 150,
            height: 100,
          ),
          SizedBox(height: 20),
          Text(
            "Punya Kode Promo?",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            onChanged: (value) {
              setState(() {
                promoCode = value;
              });
            },
            decoration: InputDecoration(
              hintText: 'Masukkan Disini!',
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 101, 203, 233),
                  width: 2,
                ),
              ),
            ),
            style: TextStyle(
              color: promoCode.isNotEmpty
                  ? Color.fromARGB(255, 101, 203, 233)
                  : Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Simpan',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Colors.transparent,
                    minimumSize: Size(150, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                        side: BorderSide(color: Colors.black12))),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
