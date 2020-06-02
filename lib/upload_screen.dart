import 'package:flutter/material.dart';

class UploadScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => UploadScreenState();
}

class UploadScreenState extends State<UploadScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.music_note,
        ),
      ),
    );
  }
}