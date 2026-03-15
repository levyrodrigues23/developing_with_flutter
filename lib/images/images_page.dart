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
                    backgroundColor: Colors.white.withValues(alpha: 0.5),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDl6MYXHMPJg-VkRIL3oEKwpgSQ9JkUJxWuQ&s',
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
