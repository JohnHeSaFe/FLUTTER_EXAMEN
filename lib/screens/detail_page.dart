import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int index;
  final String text;

  const DetailPage({required this.index, required this.text});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          Text('Indice: $index'),
          SizedBox(
            height: 10,
          ),
          Text('Texto: $text')
        ],
      ),
    ));
  }
}
