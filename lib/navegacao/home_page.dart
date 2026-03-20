import 'package:flutter/material.dart';
import 'package:projeto_flutter/navegacao/page2.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('home page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            ElevatedButton(onPressed: () {
              Navigator.of(
              context
            ).push(MaterialPageRoute(
              settings: RouteSettings(name: 'page2'),
              builder: (context) => Page2(),),);
            }, child: Text('page2 via page')),
            ElevatedButton(onPressed: () {}, child: Text('page2 via named')),
          ],
        ),
      ),
    );
  }
}
