import 'dart:io';
import 'package:e_service/profileNav/aturAlamat.dart';
import 'package:e_service/profileNav/alamat.dart';
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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/bg-profil2.png'),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 45),
                CircleAvatar(
                  radius: 80,
                  backgroundImage: _image != null
                      ? FileImage(_image!)
                      : AssetImage('assets/icons/face.png')
                          as ImageProvider<Object>,
                  backgroundColor: Colors.white,
                ),
                SizedBox(height: 20),
                Text(
                  'Users',
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
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
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.green,
                            ),
                            SizedBox(width: 8.0),
                            Text('Ubah Foto',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ),
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
                              color: Colors.red,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Hapus Foto',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        style: TextButton.styleFrom(
                          textStyle: TextStyle(
                            fontSize: 14,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                          ),
                          backgroundColor: Colors.transparent,
                          padding: EdgeInsets.symmetric(horizontal: 15.0),
                        ),
                      ),
                    )
                  ],
                ),

                // SizedBox(height: 20),
                // TextFormField(
                //   decoration: InputDecoration(
                //     labelText: 'Ubah Nama',
                //     hintText: 'Masukkan nama baru',
                //   ),
                // ),
                // SizedBox(height: 20),
                // TextFormField(
                //   decoration: InputDecoration(
                //     labelText: 'Ubah Password',
                //     hintText: 'Masukkan password baru',
                //   ),
                // ),
                // SizedBox(height: 20),
                // TextFormField(
                //   decoration: InputDecoration(
                //     labelText: 'Atur Alamat Rumah',
                //     hintText: 'Masukkan alamat rumah',
                //   ),
                // ),
                TextButton(
                  onPressed: () {},
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
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
                      mainAxisAlignment: MainAxisAlignment.center,
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.25,
                ),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text('Sign Out'),
                          content: Text('Are you sure you want to sign out?'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop(false);
                              },
                              child: Text('No'),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamedAndRemoveUntil(
                                  context,
                                  'login',
                                  (Route<dynamic> route) => false,
                                );
                              },
                              child: Text('Yes'),
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
                    backgroundColor: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
