import 'package:flutter/material.dart';

class HistorialSolicitadores extends StatelessWidget {
  const HistorialSolicitadores({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.blueGrey),
                bottom: BorderSide(color: Colors.blueGrey),
                left: BorderSide(color: Colors.white),  // Cambiado a color blanco
                right: BorderSide(color: Colors.white),  // Cambiado a color blanco
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: Text(
                    'Solicitud 1',
                    style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                ),
                Container(
                  height: 2,
                  color: Colors.blueGrey,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: const BoxDecoration(
                            border: Border(
                              right: BorderSide(color: Colors.blueGrey),
                            ),
                          ),
                          child: const Icon(
                            Icons.assignment_ind,
                            color: Colors.blueGrey,
                          ),
                        ),
                        const SizedBox(width: 16),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Usuario Cliente',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'John Doe',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 24),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ubicación de la Solicitud',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '123 Main Street, Cityville',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 24),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tipo de Residuo Solicitado',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Vidrio',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(width: 24),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Kilos',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '5 kg',
                              style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}