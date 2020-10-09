import 'package:flutter/material.dart';
import 'package:project_flutter/main.dart';

void main() {
  runApp(homewoi());
}

class homewoi extends StatefulWidget {
  @override
  _homewoiState createState() => _homewoiState();
}

class _homewoiState extends State<homewoi> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}
