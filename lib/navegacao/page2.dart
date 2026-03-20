import 'package:flutter/material.dart';
import 'package:projeto_flutter/navegacao/page3.dart';

class Page2 extends StatelessWidget {

  static final String routeName = '/page2';

  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('página 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            ElevatedButton(onPressed: () {
              Navigator.of(
              context
            ).push(MaterialPageRoute(
              settings: RouteSettings(name: 'page3'),
              builder: (context) => Page3(),),);
            }, child: Text('page3 via page')),

            ElevatedButton(onPressed: (){
              Navigator.of(context).pop();
            }, child: Text('pop')),

            ElevatedButton(onPressed: () {
              Navigator.of(context).pushNamed('/page3');
            }, child: Text('page3 via named')),
          ],


        ),
      ),
    );
  }
}
