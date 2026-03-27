import 'package:flutter/material.dart';
import 'package:projeto_flutter/home/home_page.dart';

import 'package:projeto_flutter/images/images_page.dart';
import 'package:projeto_flutter/navegacao/home_page.dart' as navegacao;
import 'package:projeto_flutter/navegacao/page1.dart';
import 'package:projeto_flutter/navegacao/page2.dart';
import 'package:projeto_flutter/navegacao/page3.dart';
import 'package:projeto_flutter/navegacao/page4.dart';
import 'package:projeto_flutter/navegacao_params/lista.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // pra remover o debug

initialRoute: '/navegacao_param', // if I would want to turn the navegacao_params as a homepage
/*       home:
          navegacao.HomePage(),  */
          routes:{
            '/': (_) => navegacao.HomePage(),
            '/page1': (_) => Page1(),
            Page2.routeName: (_) => Page2(),
            '/page3': (_) => Page3(),
            '/page4': (_) => Page4(),
            '/navegacao_param' : (_) => Lista(),
          }// essa página é a main app, a porta de entrada para o meu aplicativo
    );
  }
}
