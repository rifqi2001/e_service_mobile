import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResultsPage extends StatefulWidget {
  final String name;
  final String phone;
  final String address;

  ResultsPage({required this.name, required this.phone, required this.address});

  @override
  _ResultsPageState createState() => _ResultsPageState();
}

class _ResultsPageState extends State<ResultsPage> {
  late String _name;
  late String _phone;
  late String _address;

  @override
  void initState() {
    super.initState();
    _name = widget.name;
    _phone = widget.phone;
    _address = widget.address;
  }

  void _navigateToEditPage() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              EditPage(name: _name, phone: _phone, address: _address)),
    );

    if (result != null) {
      setState(() {
        _name = result['name'];
        _phone = result['phone'];
        _address = result['address'];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Results'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Name: $_name'),
            SizedBox(height: 16.0),
            Text('Phone: $_phone'),
            SizedBox(height: 16.0),
            Text('Address: $_address'),
            SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: _navigateToEditPage,
                child: Text('Edit'),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EditPage extends StatefulWidget {
  final String name;
  final String phone;
  final String address;

  EditPage({required this.name, required this.phone, required this.address});

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  late TextEditingController _addressController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.name);
    _phoneController = TextEditingController(text: widget.phone);
    _addressController = TextEditingController(text: widget.address);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  void _saveForm() {
    final name = _nameController.text;
    final phone = _phoneController.text;
    final address = _addressController.text;

    final result = {'name': name, 'phone': phone, 'address': address};

    Navigator.pop(context, result);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _phoneController,
              decoration: InputDecoration(
                labelText: 'Phone',
                hintText: 'Enter your phone number',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your phone number';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: _addressController,
              decoration: InputDecoration(
                labelText: 'Address',
                hintText: 'Enter your address',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your address';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                onPressed: _saveForm,
                child: Text('Save'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
