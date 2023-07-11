import 'package:cafe_app/presentantion/screens/list_option.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Café'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          Icon(Icons.coffee),
          ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => ListOption(title: 'Opção de Sabores')));
          }, child: Text("Pedir um café")),
          ElevatedButton(onPressed: (){}, child: Text("Pedir dois cafés")),
          ElevatedButton(onPressed: (){}, child: Text("Pedir três cafés")),
        ],
      ),
    );
  }
}
