import 'package:flutter/material.dart';
import 'package:projeto_flutter/navegacao/page4.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('página 3')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  // esse push replacement é interessante porque ele permite q voce substitua uma página e ainda volte para uma anterior
                  MaterialPageRoute(
                    settings: RouteSettings(name: 'page4'),
                    builder: (context) => Page4(),
                  ),
                );
              },
              child: Text('page4 via page'),
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
