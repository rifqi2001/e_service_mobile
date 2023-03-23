import 'package:flutter/material.dart';

class MyLanding extends StatelessWidget {
  const MyLanding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/images/bg-landing.png'),
            fit: BoxFit.cover,
            ),
          ),
          child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/logo.png'),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'login');
                },
                child: Text('Login'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.transparent),
                  textStyle: MaterialStateProperty.all(TextStyle(fontSize: 20)),
                  padding: MaterialStateProperty.all(EdgeInsets.only(left: 25, right: 25)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    // side: BorderSide(color: Colors.black),
                  ))
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
