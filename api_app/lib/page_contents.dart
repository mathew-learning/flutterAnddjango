import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ItemList extends StatefulWidget {
  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  List<dynamic> items = [];
  bool displayText = false;

  @override
  void initState() {
    super.initState();
  }

  Future<void> fetchItems() async {
    final response = await http.get(Uri.parse('http://127.0.0.1:8000/api_item/items/'));
    if (response.statusCode == 200) {
      setState(() {
        items = jsonDecode(response.body);
      });
    }
  }

  Future<void> deleteItems() async {
    final response = await http.get(Uri.parse('http://127.0.0.1:8000/api/items/'));
    if (response.statusCode == 200) {
      setState(() {
        items = jsonDecode(response.body);
      });
    }
  }

  Future<void> additems() async {
    final response = await http.get(Uri.parse('http://127.0.0.1:8000/api/items/'));
    if (response.statusCode == 200) {
      setState(() {
        items = jsonDecode(response.body);
      });
    }
  }

  Future<void> updateitems() async {
    final response = await http.get(Uri.parse('http://127.0.0.1:8000/api/items/'));
    if (response.statusCode == 200) {
      setState(() {
        items = jsonDecode(response.body);
      });
    }
  }



  void toggleText(){
    setState(() { 
      displayText = !displayText;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor: Color.fromARGB(255, 188, 218, 245),

      
      body: Column(children: [Text('Matt_lib',
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
      Center(
        child: Container(
            padding: const EdgeInsets.all(100.0),
            color: Color.fromARGB(255, 154, 199, 238),
            alignment: Alignment.center,
            width: 1500.0,
            height: 700.0,
      
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Container(
                              width: 10.0,
                              height: 30.0,
                  child: TextButton(
                          style: ButtonStyle(
                
                    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 37, 93, 139)),
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Set the text color.            
                
                          ),
                          onPressed: toggleText,
                          child: Text(items[index]['name'],
                          style: TextStyle(
                      color: Color.fromARGB(223, 185, 210, 235),
                      fontSize: 25.0,
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
                        ),
                ),
        
                subtitle: Text(items[index]['description'],
                style: TextStyle(
    color: Color.fromARGB(225, 68, 85, 96),
    fontSize: 12.0,
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
  ),),
              );
            },
          ),
        ),
      ),
      Row(
  mainAxisAlignment: MainAxisAlignment.center, // Align the children along the horizontal axis (center).
  crossAxisAlignment: CrossAxisAlignment.center, // Align the children along the vertical axis (center).
        children: [
        ElevatedButton(
        onPressed: () {
          fetchItems(); // Fetch items when the button is pressed.
        },
          style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 61, 154, 61), // Set the background color of the button.
    onPrimary: Colors.white, // Set the text color of the button.
    // You can also customize other properties here, such as padding, textStyle, elevation, etc.
  ),
        child: Text('GET')
      ),
      ElevatedButton(
        onPressed: () {
          additems(); // Fetch items when the button is pressed.
        },
        style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 145, 93, 79), // Set the background color of the button.
    onPrimary: Colors.white, // Set the text color of the button.
    // You can also customize other properties here, such as padding, textStyle, elevation, etc.
  ),
        child: Text('POST')
      ),

      ElevatedButton(
        onPressed: () {
          updateitems(); // Fetch items when the button is pressed.
        },
        style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 236, 203, 74), // Set the background color of the button.
    onPrimary: Colors.white, // Set the text color of the button.
    // You can also customize other properties here, such as padding, textStyle, elevation, etc.
  ),
        child: Text('PUT')
      ),

      ElevatedButton(
        onPressed: () {
          deleteItems(); // Fetch items when the button is pressed.
        },
        style: ElevatedButton.styleFrom(
    primary: Color.fromARGB(255, 231, 25, 25), // Set the background color of the button.
    onPrimary: Colors.white, // Set the text color of the button.
    // You can also customize other properties here, such as padding, textStyle, elevation, etc.
  ),
        child: Text('DELETE')
      ),
      
      ],
      ),
      ],
    ),
    );
    
  }
}
