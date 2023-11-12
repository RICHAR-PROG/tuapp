import 'package:bioallin/presentation/screens/history_screen.dart';
import 'package:bioallin/presentation/screens/map_screen.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class SolicitarRecolector extends StatefulWidget {
  @override
  State<SolicitarRecolector> createState() => _RequestState();
}

class _RequestState extends State<SolicitarRecolector> {
  late TextEditingController wasteTypeController;
  String selectedWasteType = 'Orgánico';
  int selectedQuantity = 1;
  String selectedCollector = 'Recolector 1';
  bool isFirstTimeEditing = true;

  Map<String, List<String>> wasteTypeExamples = {
    'Orgánico': ['carton', 'hojas', 'ramas'],
    'Inorgánico': ['vidrio', 'plastico', 'ropa vieja'],
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
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Éxito'),
          content: const Text('Los datos se enviaron exitosamente.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HistoryScreen()),
                );
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  void verUbicacion() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const MapS()),
    );
  }

  void updateWasteTypeExamples() {
    final List<String> examples = wasteTypeExamples[selectedWasteType] ?? [];
    wasteTypeController.text = examples.join(', ');
  }

  void clearText() {
    setState(() {
      wasteTypeController.text = '';
      isFirstTimeEditing = true;
    });
  }

  @override
  void initState() {
    super.initState();
    wasteTypeController = TextEditingController();
    updateWasteTypeExamples();
  }

  Future<Position> determinePosition() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('error');
      }
    }
    return await Geolocator.getCurrentPosition();
  }

  void getCurrentLocation() async {
    Position position = await determinePosition();
    print(position.latitude);
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        // width: MediaQuery.of(context).size.width / 1.5,
        height: 450,
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 252, 253, 247),
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
                ElevatedButton(
                  onPressed: verUbicacion,
                  // ignore: sort_child_properties_last
                  child: const Text('Enviar ubicación'),
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(3),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(29, 125, 15, 1)),
                    foregroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 243, 239, 239)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Tipo de recolector'),
                DropdownButton<String>(
                  value: selectedWasteType,
                  onChanged: (newValue) {
                    setState(() {
                      selectedWasteType = newValue!;
                      updateWasteTypeExamples();
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    controller: wasteTypeController,
                    decoration: InputDecoration(
                      hintText: 'Escriba el tipo de residuo ',
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: clearText,
                      ),
                    ),
                    onChanged: (value) {
                      if (isFirstTimeEditing && value.isNotEmpty) {
                        setState(() {
                          wasteTypeController.text = value;
                          isFirstTimeEditing = false;
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  // ignore: sort_child_properties_last
                  child: const Text('Cancelar'),
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(3),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 243, 239, 239)),
                    foregroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(29, 125, 15, 1)),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    guardarDatos();
                  },
                  // ignore: sort_child_properties_last
                  child: const Text('Solicitar'),
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(3),
                    backgroundColor: MaterialStateProperty.all(
                        const Color.fromARGB(255, 243, 239, 239)),
                    foregroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(29, 125, 15, 1)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
