import 'package:flutter/material.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('images'), backgroundColor: Colors.amber),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              child: Image.asset(
                'assets/teste.jpg',
                fit: BoxFit
                    .cover, // ele acaba distorcendo a imagem, ou seja, essa é a característica do fill
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDl6MYXHMPJg-VkRIL3oEKwpgSQ9JkUJxWuQ&s',
                fit: BoxFit.fill
              ),
              
              
            ),
          ],
        ),
      ),
    );
  }
}
