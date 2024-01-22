import 'package:flutter/material.dart';

void main() {
  runApp(ImageToggleApp());
}

class ImageToggleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Toggle App',
      home: ImageToggleScreen(),
    );
  }
}

class ImageToggleScreen extends StatefulWidget {
  @override
  _ImageToggleScreenState createState() => _ImageToggleScreenState();
}

class _ImageToggleScreenState extends State<ImageToggleScreen> {
  bool isImage1Visible = true;

  void toggleImage() {
    setState(() {
      isImage1Visible = !isImage1Visible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Toggle'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: toggleImage,
          child: isImage1Visible
              ? Image.asset(
            'images/off.jpg', // Replace with the actual path of your first image
            width: 200.0,
            height: 200.0,
          )
              : Image.asset(
            'images/on.png', // Replace with the actual path of your second image
            width: 200.0,
            height: 200.0,
          ),
        ),
      ),
    );
  }
}