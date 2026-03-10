import 'package:flutter/material.dart';


class HomePageStatefull extends StatefulWidget {
  const HomePageStatefull({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePageStateFullState();
  }
}

class _HomePageStateFullState extends State<HomePageStatefull> {
  String texto = 'estou no statefullwidget';

  @override
  void initState() {
    super.initState();
    texto = 'texto alterado pelo initstate';
  }

  @override
  Widget build(BuildContext context) {
    print("buildando o home page statefull");
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(texto),
            TextButton(
              onPressed: () {
                setState(() {
                  texto = "eu alterei o texto agora";
                });
              },
              child: Text('alterar texto'),
            ),
          ],
        ),
      ),
    );
  }
}
