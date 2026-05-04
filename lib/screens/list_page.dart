import 'package:flutter/material.dart';
import 'package:flutter_examen/routes.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  // Cambia a lista vacía [] para probar el estado vacío
  static const List<String> _items = [
    'Tarea A',
    'Tarea B',
    'Tarea C',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Listado de Tareas')),
      body: _items.isEmpty
          ? const Center(
              child: Text(
                'No hay tareas disponibles',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            )
          : ListView.separated(
              itemCount: _items.length,
              separatorBuilder: (context, index) => const Divider(height: 1),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(child: Text('$index')),
                  title: Text('Elemento $index: ${_items[index]}'),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    Navigator.pushReplacementNamed(context, AppRoutes.detail,
                        arguments: {'index': index, 'text': _items[index]});
                  },
                );
              },
            ),
    );
  }
}
