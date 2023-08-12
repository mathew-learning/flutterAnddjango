import 'package:flutter/material.dart';
import 'package:api_app/page_contents.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
                  backgroundColor: Color.fromARGB(255, 188, 218, 245),


      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(

          child: Container(
                        padding: const EdgeInsets.all(50.0),
            color: Color.fromARGB(255, 154, 199, 238),
            alignment: Alignment.center,
            width: 500.0,
            height: 700.0,

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: 
              <Widget>[
                Text('Matt_lib',
        style: TextStyle(
    color: Color.fromARGB(228, 2, 77, 135),
    fontSize: 40.0,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    letterSpacing: 1.5,
    decoration: TextDecoration.none,
    decorationColor: Colors.red,
    decorationStyle: TextDecorationStyle.wavy,
    decorationThickness: 2.0,
    fontFamily: 'RobotoMono',
    height: 1.2,
    textBaseline: TextBaseline.alphabetic,
  ),
  ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Perform login logic here
                    Navigator.push(
                context,
                MaterialPageRoute(
            builder: (context) => ItemList(),
                ),
              );
                    
                  },
                  child: Text('Login'),
          
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
