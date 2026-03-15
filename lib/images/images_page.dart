// ignore_for_file: sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ImagesPage extends StatelessWidget {
  const ImagesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        appBar: AppBar(title: Center(child: Text('testando imagens ')), backgroundColor: Colors.amber, actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_circle)),
          IconButton(onPressed: (){}, icon: Icon(Icons.add_alert_outlined))
        ],
        
        
        ),
        drawer: Drawer(
          child: Center(
            child: Text("nada a ser declarado"),
          ),
        ),
        body: Center(
          child: Row(
            children: [
              Column(
                children: [
                  Container(
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
                  Container(
                    width: 430,
                    height: 200,
                    margin: EdgeInsets.fromLTRB(200,0,0,0),
                    child: Row(
                      children: [
                        Container(
                          width: 200,
                          height: 200,
                          child: Image.network('data:image/jpeg;base64,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',
                          fit: BoxFit.fill
                          ),
                          
                        ),
                        Container(
                          width: 12,
                        ),
                        Container(
                          child: const Icon(Icons.arrow_right_alt,
                          size: 40,
                          color: Colors.black54,
                          )
                        ),
                        Container(width: 8,),
                        Expanded(
                          child: Container(
                            child: const Text("vingança não vai mudar o passado",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),),
                          ) 
                        )
                      ]
                    
                    ),
                  ),
                  
                
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
