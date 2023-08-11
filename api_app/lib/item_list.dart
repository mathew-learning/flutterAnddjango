import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ItemList extends StatefulWidget {
  @override
  _ItemListState createState() => _ItemListState();
}

class _ItemListState extends State<ItemList> {
  List<dynamic> items = [];

  @override
  void initState() {
    super.initState();
    fetchItems();
  }

  Future<void> fetchItems() async {
    final response = await http.get(Uri.parse('http://127.0.0.1:8000/api/items/'));
    if (response.statusCode == 200) {
      setState(() {
        items = jsonDecode(response.body);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(items[index]['name'],style: TextStyle(
        color: Color.fromARGB(255, 244, 244, 245),
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        letterSpacing: 1.5,
        wordSpacing: 2.0,
        height: 1.2,
        background: Paint()
          ..color = Color.fromARGB(255, 198, 109, 109),

      ),),
            subtitle: Text(items[index]['description'],style: TextStyle(
        color: Color.fromARGB(255, 0, 4, 6),
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        letterSpacing: 1.5,
        wordSpacing: 2.0,
        height: 1.2,
        background: Paint()
          ..color = Color.fromARGB(255, 251, 251, 251),
      ),),
          );
        },
      ),
    );
  }
}


