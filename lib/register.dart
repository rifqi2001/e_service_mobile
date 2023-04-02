import 'package:flutter/material.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isNameValid = false;
  bool isEmailValid = false;
  bool isPasswordValid = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/log3.jpeg'), fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: const EdgeInsets.only(top: 80),
              child: const Text(
                "Sign Up",
                style: TextStyle(
                    color: Color.fromARGB(255, 27, 27, 27),
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
                  top: MediaQuery.of(context).size.height * 0.27),
              child: Column(children: [
                TextField(
                    decoration: InputDecoration(
                        // focusedBorder: OutlineInputBorder(
                        //   borderRadius: BorderRadius.circular(25),
                        //   borderSide: const BorderSide(color: Colors.black),
                        // ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: const BorderSide(
                              color: Color.fromARGB(255, 27, 27, 27)),
                        ),
                        hintText: 'Name',
                        hintStyle: const TextStyle(
                            color: Color.fromARGB(255, 27, 27, 27)),
                        prefixIcon: Icon(Icons.person)),
                    onChanged: (value) {
                      setState(() {
                        isNameValid = value.isNotEmpty;
                      });
                    }),
                const SizedBox(
                  height: 30,
                ),
                TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 27, 27, 27)),
                      ),
                      hintText: 'Email',
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 27, 27, 27)),
                      prefixIcon: Icon(Icons.mail)),
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
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25),
                        borderSide: const BorderSide(
                            color: Color.fromARGB(255, 27, 27, 27)),
                      ),
                      hintText: 'Password',
                      hintStyle: const TextStyle(
                          color: Color.fromARGB(255, 27, 27, 27)),
                      prefixIcon: Icon(Icons.lock)),
                  onChanged: (value) {
                    setState(() {
                      isPasswordValid = value.length > 8;
                    });
                  },
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                      onPressed: () {
                        if (isPasswordValid && isEmailValid && isNameValid){
                                Navigator.pushNamedAndRemoveUntil(
                                  context, 
                                  'bottom', 
                                  (Route<dynamic> route) => false,
                                );
                              }
                            else {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text('Error'),
                                    content: Text('Nama, Email atau Password Tidak Valid!'),
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
                            }
                      },
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                        minimumSize: Size(150, 50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                          side: BorderSide(color: Colors.black12)
                        )
                      ),
                    ),
                      // CircleAvatar(
                      //   radius: 30,
                      //   backgroundColor: Color.fromARGB(255, 210, 210, 210),
                      //   child: IconButton(
                      //     color: Colors.blue,
                      //     onPressed: () {
                      //       if (isPasswordValid && isEmailValid && isNameValid){
                      //           Navigator.pushNamedAndRemoveUntil(
                      //             context, 
                      //             'bottom', 
                      //             (Route<dynamic> route) => false,
                      //           );
                      //         }
                      //       else {
                      //         showDialog(
                      //           context: context,
                      //           builder: (BuildContext context) {
                      //             return AlertDialog(
                      //               title: Text('Error'),
                      //               content: Text('Nama, Email atau Password Tidak Valid!'),
                      //               actions: <Widget>[
                      //                 TextButton(
                      //                   onPressed: () {
                      //                     Navigator.of(context).pop();
                      //                   },
                      //                   child: Text('OK'),
                      //                 ),
                      //               ],
                      //             );
                      //           },
                      //         );
                      //       }
                      //     },
                      //     icon: const Icon(Icons.arrow_forward),
                      //   ),
                      // ),
                    ]),
                const SizedBox(
                  height: 40,
                ),
              ]),
            ),
          ),
        ]),
      ),
    );
  }
}
