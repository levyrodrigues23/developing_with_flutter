// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('testando imagens ')),
          backgroundColor: Colors.amber,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.add_circle)),
            IconButton(onPressed: () {}, icon: Icon(Icons.add_alert_outlined)),
          ],
        ),
        drawer: Drawer(child: Center(child: Text("nada a ser declarado"))),
        body: Column(
          children: [
            Text('meu nome é rose levy',
              style: TextStyle(
                fontFamily: 'teste',
                color: Colors.black,
                fontSize: 30,
              ),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Center(
                      child: Container(
                        width: 200,
                        height: 200,
                        margin: EdgeInsets.all(50),
                                  
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/teste.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "just a image",
                            style: TextStyle(
                              backgroundColor: Colors.white.withValues(
                                alpha: 0.5,
                              ),
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
