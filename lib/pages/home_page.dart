// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('home page')),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/detalhe');
              },
              child: Text('ir para detalhe'),
            ),

            TextButton(
              onPressed: () async {

                var message = await Navigator.of(context).pushNamed('/detalhe2');
                print("mensagem recebida da página: $message");
              },
              child: Text('ir para detalhe 2 e aguardar'),
            ),
          ],
        ),
      ),
    );
  }
}
