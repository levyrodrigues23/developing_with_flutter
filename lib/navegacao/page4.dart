import 'package:flutter/material.dart';
import 'package:projeto_flutter/navegacao/page1.dart';

class Page4 extends StatelessWidget {
  const Page4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('página 4')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                /* Navigator.of(context).pushAndRemoveUntil(
                  // esse push replacement é interessante porque ele permite q voce substitua uma página e ainda volte para uma anterior
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page1'),
                    builder: (context) => Page1(),
                  ),
                ); */
                // removendo todas as páginas
                Navigator.of(context).pushAndRemoveUntil(
                  // esse push replacement é interessante porque ele permite q voce substitua uma página e ainda volte para uma anterior
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page1'),
                    builder: (context) => Page1(),
                  ),
                    (route) => route.isFirst // se esse predicate foi false, ele não sai da ultima tela sem poder voltar
                );
              },
              child: Text('page1 via page'),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('pop'),
            ),

            ElevatedButton(onPressed: () {}, child: Text('page3 via named')),
          ],
        ),
      ),
    );
  }
}
