import 'package:flutter/material.dart';
import 'package:projeto_flutter/navegacao_params/detalhe.dart';

class Lista extends StatelessWidget {
  const Lista({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('lista')),
      body: Center(
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                /*  Navigator.of(
                  context,
                ).push(MaterialPageRoute(
                  settings: RouteSettings(
                    name: 'detalhe',
                    arguments: {
                      'id': 10
                    }
                  ),
                  builder: (context) => Detalhe()));*/

                Navigator.of(
                  context,
                ).pushNamed('/detalhe', arguments: {'id': 20});
              },
              child: Text('detalhes'),
            ),
            const SizedBox(height: 8),
            TextButton(
              onPressed: () {
                Navigator.of(
                  context,
                ).pushNamed('/detalhe', arguments: {'id': 30});
              },
              child: Text('detalhes 2'),
            ),
          ],
        ),
      ),
    );
  }
}
