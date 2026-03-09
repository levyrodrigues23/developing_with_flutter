import 'package:flutter/material.dart';



// esse widget não tem estado, entao ele é um componente estático, não devo utilizar para estados
class HomePageStateless extends StatelessWidget {
  final String texto = 'estou no stateless';

  const HomePageStateless({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(texto),
          TextButton(onPressed: () {
  
          }, child: Text('alterar texto')),
        ],
      ),
    );
  }
}
