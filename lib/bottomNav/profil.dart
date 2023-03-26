import 'package:flutter/material.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Profil> {
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
              backgroundImage: AssetImage('assets/icons/face.png'),
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
              onPressed: () {},
              child: Text('Ubah Foto'),
              style: ElevatedButton.styleFrom(
                          textStyle: TextStyle(fontSize: 14, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
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
                          textStyle: TextStyle(fontSize: 14, fontFamily: 'Poppins', fontWeight: FontWeight.bold),
                          backgroundColor: Color.fromARGB(255, 0, 62, 112),
                        ),
            ),
          ],
        ),
      ),
      )
    )
    );
  }
}