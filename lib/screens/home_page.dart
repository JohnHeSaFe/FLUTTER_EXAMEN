import 'package:flutter/material.dart';
import 'package:flutter_examen/routes.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Text(
            'Home',
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        body: Center(
          child: Column(
            spacing: 100,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                spacing: 10,
                children: [
                  Icon(Icons.person),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Padding(
                      padding: EdgeInsetsGeometry.all(10),
                      child: Column(
                        spacing: 10,
                        children: [
                          Text(
                            'Texto 1',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text('Texto 2',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              ElevatedButton(
                  onPressed: () => Navigator.pushReplacementNamed(
                        context,
                        AppRoutes.list,
                      ),
                  child: Text('Listado de tareas'))
            ],
          ),
        ));
  }
}
