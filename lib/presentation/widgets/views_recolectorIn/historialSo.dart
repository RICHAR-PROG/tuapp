import 'package:flutter/material.dart';

class HistorialSolicitadores extends StatelessWidget {
  const HistorialSolicitadores({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        const SizedBox(height: 30,),
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            child: Text('Botón 1'),
            onPressed: () {
              // Redireccionar a la página 1
              Navigator.pushNamed(context, '/pagina1');
            },
          ),
          TextButton(
            child: Text('Botón 2'),
            onPressed: () {
              // Redireccionar a la página 2
              Navigator.pushNamed(context, '/pagina2');
            },
          ),
        ],
      ),
      ]),
    );
  }
}
