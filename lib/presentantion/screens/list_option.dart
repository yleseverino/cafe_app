import 'package:flutter/material.dart';

class ListOption extends StatefulWidget {
  final String title;
  const ListOption({super.key, required this.title});

  @override
  State<ListOption> createState() => _ListOptionState();
}

class _ListOptionState extends State<ListOption> {
  Option? groupValue;

  final List<Option> options = [
    Option('teste1', 1),
    Option('teste2', 2),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(options.first.title),
            leading: Radio<Option>(value: options.first, groupValue: groupValue, onChanged: (value){
              setState(() {
                groupValue = value;
              });
            }),
          ),
          ListTile(
            title: Text(options.last.title),
            leading: Radio<Option>(value: options.last, groupValue: groupValue, onChanged: (value){
              setState(() {
                groupValue = value;
              });
            }),
          )
        ],
      ),
    );
  }
}

class Option {
  final String title;
  final int value;

  Option(this.title, this.value);
}

