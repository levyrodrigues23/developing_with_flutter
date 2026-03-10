import 'package:flutter/material.dart';




import 'package:projeto_flutter/home/home_page_2.dart';void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // pra remover o debug
      
      home: TrabalhandoComContainer(), // essa página é a main app, a porta de entrada para o meu aplicativo
    );
  }
}
