import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Text('Home'),
        ),
        body: Center(
          child: Column(
            spacing: 100,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                spacing: 10,
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: 10,
                  ),
                  Padding(
                    padding: EdgeInsetsGeometry.all(10),
                    child: Column(
                      spacing: 10,
                      children: [Text('Texto 1'), Text('Texto 2')],
                    ),
                  )
                ],
              ),
              ElevatedButton(onPressed: null, child: Text('Listado de tareas'))
            ],
          ),
        ));
  }
}
