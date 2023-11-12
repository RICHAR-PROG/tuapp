import 'package:flutter/material.dart';

class HistorialResiduos extends StatelessWidget {
  const HistorialResiduos({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                  nombre: 'Richar Quispe Quincho',
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
    return ListView.separated(
      padding: EdgeInsets.symmetric(horizontal: 16),
      itemCount: registros.length,
      itemBuilder: (context, index) {
        return registros[index];
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: 15); // Especifica el espacio de separación vertical entre los cuadros
      },
    );
  }
}

class RegistroWidget extends StatelessWidget {
  final Registro registro;

  const RegistroWidget({Key? key, required this.registro});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0, // Agrega color de sombra
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Agrega borde redondeado
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              spreadRadius: 0,
              blurRadius: 10,
              offset: Offset(0, 4), // Ajusta el desplazamiento de la sombra en el eje y
            ),
          ],
        ),
        child: ListTile(
          leading: Icon(Icons.person),
          title: RichText(
            text: TextSpan(
              text: 'Nombre: ',
              style: DefaultTextStyle.of(context).style, // Usa el estilo de texto predeterminado
              children: <TextSpan>[
                TextSpan(
                  text: registro.nombre,
                  style: TextStyle(
                    fontWeight: FontWeight.bold, // Aplica negrita al nombre
                  ),
                ),
              ],
            ),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Ubicación: ',
                  style: DefaultTextStyle.of(context).style, // Usa el estilo de texto predeterminado
                  children: <TextSpan>[
                    TextSpan(
                      text: registro.ubicacion,
                      style: TextStyle(
                        fontWeight: FontWeight.bold, // Aplica negrita a la ubicación
                      ),
                    ),
                  ],
                ),
              ),
              Text('Descripción: ${registro.descripcion}'),
              Text('Cantidad: ${registro.cantidad}'),
            ],
          ),
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

