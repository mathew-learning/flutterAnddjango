import 'package:flutter/material.dart';

class TextDisplayButton extends StatefulWidget {
  @override
  _TextDisplayButtonState createState() => _TextDisplayButtonState();
}

class _TextDisplayButtonState extends State<TextDisplayButton> {
  bool isVisible = false;

  void toggleTextVisibility() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: toggleTextVisibility,
          child: Text('Toggle Text'),
        ),
        SizedBox(height: 20),
        Visibility(
          visible: isVisible,
          child: Text(
            'Text is now visible!',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ],
    );
  }
}
