import 'package:flutter/material.dart';

enum PopupMenuPages { container }

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('home page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            icon: Icon(Icons.restaurant_menu),
            tooltip: 'selecione um item do menu',
            popUpAnimationStyle: const AnimationStyle(
              curve: Curves.easeOut,
              reverseCurve: Curves.easeIn,
              duration: Duration(milliseconds: 120),
              reverseDuration: Duration(milliseconds: 90),
            ),
            

            shadowColor: Colors.grey,

            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('container'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}
