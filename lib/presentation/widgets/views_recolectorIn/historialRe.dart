import 'package:flutter/material.dart';

class HistorialResiduos extends StatelessWidget {
  const HistorialResiduos({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Barra de navegación
          const SizedBox(
            height: 20,
          ),
          // Lista de registros
          Expanded(
            child: ListadoRegistros(registros: [
              RegistroWidget(
                registro: Registro(
                  nombre: 'Juan Mendez',
                  ubicacion: 'Jr. Manuel Prado',
                  descripcion: 'Vidrio, papel',
                  cantidad: '5kg',
                ),
              ),
              RegistroWidget(
                registro: Registro(
                  nombre: 'Victor Suarez',
                  ubicacion: 'Av. Leoncio Prado',
                  descripcion: 'Plastico, cuaderno',
                  cantidad: '8kg',
                ),
              ),
              RegistroWidget(
                registro: Registro(
                  nombre: 'Maria Cornejo',
                  ubicacion: 'Av. Ferrocarril',
                  descripcion: 'Cajas, botellas',
                  cantidad: '10kg',
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

class ListadoRegistros extends StatelessWidget {
  final List<RegistroWidget> registros;

  const ListadoRegistros({Key? key, required this.registros});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 16),
      children: registros,
    );
  }
}

class RegistroWidget extends StatelessWidget {
  final Registro registro;

  const RegistroWidget({Key? key, required this.registro});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.person),
        title: Text(registro.nombre),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Ubicacion: ${registro.ubicacion}'),
            Text('Descripcion: ${registro.descripcion}'),
            Text('Cantidad: ${registro.cantidad}'),
          ],
        ),
      ),
    );
  }
}

class Registro {
  final String nombre;
  final String ubicacion;
  final String descripcion;
  final String cantidad;

  Registro({
    required this.nombre,
    required this.ubicacion,
    required this.descripcion,
    required this.cantidad,
  });
}

