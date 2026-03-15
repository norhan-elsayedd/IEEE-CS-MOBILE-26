import 'package:flutter/material.dart';
import 'package:plant_store/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAPP();
}
  

class _MyAPP extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "GreenLeaf Store",
      theme: ThemeData(
        primaryColor: Color(0xFF1B5E20),
      ),
      home: HomePage(),
      
    );
  }

}