import 'package:flutter/material.dart';
import 'package:projeto_flutter/pages/container/container_page.dart';
import 'package:projeto_flutter/pages/home/home_page.dart';


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
/* 
      onGenerateRoute: (RouteSettings settings) {
        if (settings.name == '/') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => HomePage());
        }
        if (settings.name == '/detalhe') {
          return MaterialPageRoute(
            settings: settings,
            builder: (context) => DetalhePage());
        }
        return null;
        
      },
 */

routes:{
  '/': (_) => HomePage(),
  '/container' :(_) => ContainerPage()
}



/*      routes: {
        '/': (_) => HomePage(),
        '/detalhe2' : (_) => DetalhePage2()
      },
 */
      /* 


routes:{

  '/': (_) => HomePage(),
  '/detalhes': (_) => DetalhePage()
},
 */
      /*  routes:{
            '/': (_) => navegacao.HomePage(),
            '/page1': (_) => Page1(),
            Page2.routeName: (_) => Page2(),
            '/page3': (_) => Page3(),
            '/page4': (_) => Page4(),
            '/navegacao_param' : (_) => Lista(),
            '/detalhe' : (_) => Detalhe(),
          }// essa página */
    );
  }
}
