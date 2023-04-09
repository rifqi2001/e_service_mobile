import 'dart:io';
import 'package:e_service/bottomNav/history.dart';
import 'package:e_service/homePageNav/help.dart';
import 'package:e_service/homePageNav/promo.dart';
import 'package:e_service/profileNav/aturAlamat.dart';
import 'package:e_service/profileNav/alamat.dart';
import 'package:e_service/profileNav/update.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Profil> {
  File? _image;

  Future _getImageFromGallery() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pickedFile!.path);
    });
// Save the image path in SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('imagePath', _image!.path);
  }

  @override
  void initState() {
    super.initState();
    _loadImagePath();
  }

  Future<void> _loadImagePath() async {
    final prefs = await SharedPreferences.getInstance();
    final imagePath = prefs.getString('imagePath');
    if (imagePath != null) {
      setState(() {
        _image = File(imagePath);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/profile.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              CircleAvatar(
                radius: 80,
                backgroundImage: _image != null
                    ? FileImage(_image!)
                    : AssetImage('assets/icons/face.png')
                        as ImageProvider<Object>,
                backgroundColor: Colors.white,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: _getImageFromGallery,
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                        backgroundColor: Colors.green,
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.camera_alt_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(width: 8.0),
                          Text('Ubah Foto',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextButton(
                      onPressed: () async {
                        final prefs = await SharedPreferences.getInstance();
                        prefs.remove('imagePath');
                        setState(() {
                          _image = null;
                        });
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          SizedBox(width: 5),
                          Text(
                            'Hapus Foto',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(
                          fontSize: 14,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                        backgroundColor: Colors.red,
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Akun',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UpdateProfile()),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.edit, color: Colors.blue),
                      SizedBox(width: 10),
                      Text(
                        'Update Profil',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                style: TextButton.styleFrom(
                    textStyle: TextStyle(),
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(horizontal: 15.0)),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ContactPage()),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_pin, color: Colors.yellow),
                      SizedBox(width: 10),
                      Text(
                        'Atur Alamat',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                style: TextButton.styleFrom(
                    textStyle: TextStyle(),
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(horizontal: 15.0)),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => History()),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.event_note, color: Colors.lime),
                      SizedBox(width: 10),
                      Text(
                        'Pesanan',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                style: TextButton.styleFrom(
                    textStyle: TextStyle(),
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(horizontal: 15.0)),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PromoScreen()),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.percent_sharp, color: Colors.purple),
                      SizedBox(width: 10),
                      Text(
                        'Promo',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                style: TextButton.styleFrom(
                    textStyle: TextStyle(),
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(horizontal: 15.0)),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => UpdateProfile()),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.credit_card_rounded, color: Colors.indigo),
                      SizedBox(width: 10),
                      Text(
                        'Metode Pembayaran',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                style: TextButton.styleFrom(
                    textStyle: TextStyle(),
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(horizontal: 15.0)),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BantuanScreen()),
                  );
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.help, color: Colors.teal),
                      SizedBox(width: 10),
                      Text(
                        'Bantuan',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                style: TextButton.styleFrom(
                    textStyle: TextStyle(),
                    backgroundColor: Colors.transparent,
                    padding: EdgeInsets.symmetric(horizontal: 15.0)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('Sign Out'),
                        content: Text('Apakah anda yakin ingin keluar akun?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                            child: Text('Tidak'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamedAndRemoveUntil(
                                context,
                                'login',
                                (Route<dynamic> route) => false,
                              );
                            },
                            child: Text('Ya'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('SIGN OUT'),
                style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                    backgroundColor: Color.fromARGB(255, 101, 203, 233),
                    onPrimary: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
