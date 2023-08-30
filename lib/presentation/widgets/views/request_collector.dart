import 'package:flutter/material.dart';

class Request extends StatelessWidget {
  const Request({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Column(children: [
      Row(
        children: [
          Icon(Icons.location_on, color: Color.fromARGB(255, 4, 112, 22)),
          Text('Ubicación'),
          ElevatedButton(
            onPressed: null,
            child: Text("Ir"),
          ),
          FloatingActionButton(
            onPressed: null,
            // focusColor: Colors.amber,
            child: Text("Ir"),
          )
        ],
      )
    ]));
  }
}
