import 'package:flutter/material.dart';

class Request extends StatefulWidget {
  @override
  State<Request> createState() => _RequestState();
}

class _RequestState extends State<Request> {
  String selectedWasteType = 'Orgánico';
  int selectedQuantity = 1;
  String selectedCollector = 'Recolector 1';

  Map<String, List<String>> wasteTypeExamples = {
    'Orgánico': ['Ejemplo 1', 'Ejemplo 2', 'Ejemplo 3'],
    'Inorgánico': ['Ejemplo 4', 'Ejemplo 5', 'Ejemplo 6'],
  };

  List<DropdownMenuItem<String>> getWasteTypeDropdownItems() {
    return wasteTypeExamples.keys.map((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList();
  }

  List<DropdownMenuItem<int>> getQuantityDropdownItems() {
    return <int>[1, 2, 3, 4, 5].map((int value) {
      return DropdownMenuItem<int>(
        value: value,
        child: Text('$value KG'),
      );
    }).toList();
  }

  void guardarDatos() {
    // Lógica para guardar los datos
    // Puedes agregar aquí la acción que deseas realizar al guardar los datos
    // Por ejemplo, mostrar un alert con un mensaje exitoso
    showDialog(
      context: context,
      barrierDismissible: false, // No permite cerrar el diálogo al presionar fuera de él
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Éxito'),
          content: const Text('Los datos se guardaron exitosamente.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  void verUbicacion() {
    // Lógica para ver la ubicación y navegar a otro panel
    // Puedes agregar aquí la acción que deseas realizar al presionar el enlace
    // Por ejemplo, navegar a otra pantalla
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OtroPanel()),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<String> examples = wasteTypeExamples[selectedWasteType] ?? [];

    return Dialog(
      elevation: 13,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: MediaQuery.of(context).size.width / 1.5,
        height: 400, // Establece una altura fija para el Dialog
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 255, 255, 255),
              spreadRadius: 0,
              blurRadius: 0,
              offset: Offset(0, 0),
            )
          ],
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.location_on,
                    color: Color.fromARGB(255, 231, 50, 18)),
                const Text('Ubicación'),
                TextButton(
                  onPressed: verUbicacion,
                  child: const Text('Ver Ubicación'),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Tipo de residuo'),
                DropdownButton<String>(
                  value: selectedWasteType,
                  onChanged: (newValue) {
                    setState(() {
                      selectedWasteType = newValue!;
                    });
                  },
                  items: getWasteTypeDropdownItems(),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Cantidad'),
                DropdownButton<int>(
                  value: selectedQuantity,
                  onChanged: (newValue) {
                    setState(() {
                      selectedQuantity = newValue!;
                    });
                  },
                  items: getQuantityDropdownItems(),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Recolector'),
                DropdownButton<String>(
                  value: selectedCollector,
                  onChanged: (newValue) {
                    setState(() {
                      selectedCollector = newValue!;
                    });
                  },
                  items: const <DropdownMenuItem<String>>[
                    DropdownMenuItem<String>(
                      value: 'Recolector 1',
                      child: Text('Recolector 1'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Recolector 2',
                      child: Text('Recolector 2'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Recolector 3',
                      child: Text('Recolector 3'),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'plastico, vidrio, etc ',
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    guardarDatos();
                  },
                  child: const Text('Guardar'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text('Cancelar'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class OtroPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Otro Panel'),
      ),
      body: const Center(
        child: Text('Este es otro panel.'),
      ),
    );
  }
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return Request();
                },
              );
            },
            child: const Text('Abrir diálogo'),
          ),
        ),
      ),
    );
  }
}