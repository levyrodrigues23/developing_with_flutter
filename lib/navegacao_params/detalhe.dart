import 'package:flutter/material.dart';

class Detalhe extends StatefulWidget {
  const Detalhe({super.key});

  @override
  State<Detalhe> createState() => _DetalheState();
}

class _DetalheState extends State<Detalhe> {
  int? id;

  @override
  void initState() {
    super.initState();
    // tudo isso q eu digitei são maneiras de configurar rotas dinamicas, ou seja, tudo isso aqui tem a ver com navegação propriamente dito.
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      final param =
          ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;
      setState(() {
        id = param?['id'] ?? 0;
      }); // se o estado mudar eu preciso chamar o setState
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('detalhes')),
      body: Center(child: Text('o id do produto é $id')),
    );
  }
}
