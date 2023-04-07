import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ContactPage extends StatefulWidget {
  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  String name = '';
  String phone = '';
  String address = '';

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  
  @override
  void initState() {
    super.initState();
    _loadData(); 
    nameController.text = name;
    phoneController.text = phone;
    addressController.text = address;
  }

   void _loadData() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name') ?? name;
      phone = prefs.getString('phone') ?? phone;
      address = prefs.getString('address') ?? address;
    });
    nameController.text = name;
    phoneController.text = phone;
    addressController.text = address;
  }

  void _saveChanges() async {
    setState(() {
      name = nameController.text;
      phone = phoneController.text;
      address = addressController.text;
    });
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('name', name);
    prefs.setString('phone', phone);
    prefs.setString('address', address);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('Changes saved.'),
      duration: Duration(seconds: 2),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info Alamat'),
        backgroundColor: Color.fromARGB(255, 101, 203, 233),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nama'),
            SizedBox(height: 8.0),
            TextFormField(
              controller: nameController,
            ),
            SizedBox(height: 16.0),
            Text('No. Telepon'),
            SizedBox(height: 8.0),
            TextFormField(
              controller: phoneController,
            ),
            SizedBox(height: 16.0),
            Text('Alamat'),
            SizedBox(height: 8.0),
            TextFormField(
              controller: addressController,
            ),
            SizedBox(height: 32.0),
            Center(
              child: ElevatedButton(
                onPressed: _saveChanges,
                child: Text('Simpan'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 101, 203, 233),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
