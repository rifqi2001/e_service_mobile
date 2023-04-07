import 'package:flutter/material.dart';

class UpdateProfile extends StatefulWidget {
  @override
  _UpdateProfileState createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  final _formKey = GlobalKey<FormState>();
  String _username = '';
  String _password = '';
  String _newPassword = '';
  String _phoneNumber = '';

  bool _showPasswordConfirmation = false;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      // Save changes to database or backend
      // ...

      // Show confirmation dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Changes Saved'),
            content: Text('Your changes have been saved.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Update Profile'),
          backgroundColor: Color.fromARGB(255, 101, 203, 233),
        ),
        body: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Form(
                    key: _formKey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFormField(
                            initialValue: _username,
                            decoration: InputDecoration(
                              labelText: 'Username',
                              hintText: 'Masukkan username baru',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Harap masukkan username';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              setState(() {
                                _username = value!;
                              });
                            },
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              hintText: 'Masukkan password',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Harap masukkan password sekarang';
                              }
                              // If user wants to change password, show confirmation dialog
                              if (_showPasswordConfirmation &&
                                  value != _password) {
                                return 'Password Salah!';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              if (_showPasswordConfirmation) {
                                setState(() {
                                  _newPassword = value!;
                                });
                              } else {
                                setState(() {
                                  _password = value!;
                                });
                              }
                            },
                          ),
                          if (_showPasswordConfirmation)
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                labelText: 'Password baru',
                                hintText: 'Masukkan password baru',
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Harap masukkan password baru';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                setState(() {
                                  _newPassword = value!;
                                });
                              },
                            ),
                          CheckboxListTile(
                            title: Text('Ganti Password'),
                            value: _showPasswordConfirmation,
                            onChanged: (bool? value) {
                              setState(() {
                                _showPasswordConfirmation = value!;
                              });
                            },
                          ),
                          TextFormField(
                            initialValue: _phoneNumber,
                            decoration: InputDecoration(
                              labelText: 'Nomor Telepon',
                              hintText: 'Masukkan nomor telepon baru',
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Harap masukkan nomor telepon';
                              }
                              return null;
                            },
                            onSaved: (value) {
                              setState(() {
                                _phoneNumber = value!;
                              });
                            },
                          ),
                          ElevatedButton(
                            onPressed: _submitForm,
                            child: Text('Simpan Perubahan'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              onPrimary: Color.fromARGB(255, 101, 203, 233),
                            ),
                          ),
                        ])))));
  }
}
