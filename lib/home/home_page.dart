import 'package:flutter/material.dart';

class HomePageTeste extends StatelessWidget {
  const HomePageTeste({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('nossa primeira app bar', style: TextStyle(fontFamily: 'teste'),),
        backgroundColor: Colors.deepPurpleAccent,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_link_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.add_link_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.add_link_outlined))
        ],
      ),
      drawer: Drawer(
        child:Center(child: Text("drower foi aberto")),
      ),
      endDrawer: Drawer(
        child:Center(child: Text("drower fechado")),
      ),

      body: Center(
        child: Text("nosssa home page")));
  }
}

// um scaffold e um app bar é realmente necessário, title também, a questão do drawer e do Center bem utilizado
// I realized something when I was coding...this is very different that react, and to be honest better
// and most easy, even beaultiful, but my react...i remember the old days.