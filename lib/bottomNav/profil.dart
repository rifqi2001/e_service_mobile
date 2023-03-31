import 'dart:io';
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
// Load the saved image path from SharedPreferences
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
              image: AssetImage('assets/images/profil-bg.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _getImageFromGallery,
                  child: Text('Ubah Foto'),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                    backgroundColor: Color.fromARGB(255, 0, 62, 112),
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Ubah Nama',
                    hintText: 'Masukkan nama baru',
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Ubah Password',
                    hintText: 'Masukkan password baru',
                  ),
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Atur Alamat Rumah',
                    hintText: 'Masukkan alamat rumah',
                  ),
                ),
                SizedBox(height: 60),
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Simpan'),
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold),
                    backgroundColor: Color.fromARGB(255, 0, 62, 112),
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
