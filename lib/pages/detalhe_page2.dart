import 'package:flutter/material.dart';

class DetalhePage2 extends StatelessWidget {
  const DetalhePage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('')),
      body: Center(
        child: TextButton(onPressed: (){
          Navigator.of(context).pop('parametro retornado pela tela detalhe 2page');
        }, child: Text('voltar')),
      ),
    );
  }
}
