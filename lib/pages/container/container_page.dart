import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('exemplo de container criado')),
      body: Center(
        child: Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            // tem o fromLTRB,all, only ou symmetric
            // container tem margin e padding e a diferença entre eles é bem tranquila
            padding: EdgeInsets.all(10),
        
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(Radius.circular(67)),
        
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 20,
                  offset: Offset(10, 10),
                ),
                BoxShadow(
                  color: Colors.green,
                  blurRadius: 20,
                  offset: Offset(-10, -10),
                ),
              ],
            ),
          ),
      ),
    );
  }
}
