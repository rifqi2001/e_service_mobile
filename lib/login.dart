import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  final TextEditingController emailController = TextEditingController();

  bool isEmailValid = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/cover1.jpg'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: const EdgeInsets.only(top: 80),
              child: const Text(
                "LOGIN",
                style: TextStyle(
                    color: Color.fromARGB(248, 27, 27, 27),
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins'),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  right: 35,
                  left: 35,
                  top: MediaQuery.of(context).size.height * 0.5),
              child: Column(children: [
                TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    filled: true,
                    hintText: 'Email',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(248, 27, 27, 27)),
                    prefixIcon: Icon(Icons.mail),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(248, 27, 27, 27)),
                    ),
                  ),
                  onChanged: (value) {
                    setState(() {
                      isEmailValid = value.isNotEmpty && value.contains('@');
                    });
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.transparent,
                    filled: true,
                    hintText: 'Password',
                    hintStyle:
                        TextStyle(color: Color.fromARGB(248, 27, 27, 27)),
                    prefixIcon: Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: const BorderSide(
                          color: Color.fromARGB(248, 27, 27, 27)),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromARGB(255, 210, 210, 210),
                      child: IconButton(
                        color: Colors.blue,
                        onPressed: () {
                          if (isEmailValid){
                          Navigator.pushReplacementNamed(context, 'bottom');
                        } else{
                          showDialog(context: context, builder: (BuildContext context){
                            return AlertDialog(
                              title: Text('Error'),
                              content: Text('Email harus diisi sebelum login'),
                              actions: <Widget>[
                                TextButton(onPressed: (){
                                  Navigator.of(context).pop();
                                },
                                child: Text('OK'),
                                ),
                              ],
                            );
                          },
                          );
                        }
                        },
                        icon: const Icon(Icons.arrow_forward),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'register');
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, 'forgot_password');
                        },
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        ),
                      ),
                    ]),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
