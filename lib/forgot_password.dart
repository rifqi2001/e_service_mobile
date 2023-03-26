import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Email',
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // send reset password email
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Success'),
                    content: Text('Reset password email sent to ${emailController.text}'),
                    actions: <Widget>[
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
            },
            child: Text('Reset Password'),
          ),
        ],
      ),
    );
  }
}
