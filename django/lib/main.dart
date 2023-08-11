import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Django flutter app',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
            routes: {
        '/home': (context) => HomePage(),
      },
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
void _login(BuildContext context) {
  String email = emailController.text;
  String password = passwordController.text;

  // TODO: Implement login functionality

  print('Email: $email');
  print('Password: $password');

  // Navigate to the home page
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage()),
  );
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/art.jpg'),
            fit: BoxFit.cover,
          ),
          ),
          margin: const EdgeInsets.all(10.0),

          width: 300.0,
          height: 300.0,
          child: Column(children: [ TextField(
        obscureText: true,
        decoration: InputDecoration(
          
          border: OutlineInputBorder(),
          labelText: 'Email',
        ),
      ),
            TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Password',
        ),
      ),
          NeumorphicButton(onPressed:(){
                // nothing
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: 8,
        intensity: 0.8,
        color: Color.fromARGB(255, 237, 239, 239), // Red color similar to F1 cars
        shadowLightColor: Color.fromARGB(255, 154, 226, 248), // Light pink shadow color
        shadowDarkColor: Color.fromARGB(255, 126, 207, 247), // Dark red shadow color
        border: NeumorphicBorder(
          color: Colors.white,
          width: 2,
        ),
      ),
               child: Text(
          'Welcome !!',
          style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 3, 139, 244)), // Set the text color to white for contrast
        ),
              )
          ]
          ),
          
      
        ),
      )

    );
  }
}


class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/Starry_Night.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              NeumorphicButton(onPressed:(){
                // nothing
                Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
            style: NeumorphicStyle(
        shape: NeumorphicShape.concave,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: 8,
        intensity: 0.8,
        color: Color.fromARGB(255, 232, 230, 230), // Red color similar to F1 cars
        shadowLightColor: Color(0xFFFFCDD2), // Light pink shadow color
        shadowDarkColor: Color(0xFFB71C1C), // Dark red shadow color
        border: NeumorphicBorder(
          color: Colors.white,
          width: 2,
        ),
      ),
               child: Text(
          'Namaste !!',
          style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 3, 139, 244)), // Set the text color to white for contrast
        ),
              )
            ],
            
          ),
        ),
      ),
// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
  

}
