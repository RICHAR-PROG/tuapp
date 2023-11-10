// ignore: file_names
import 'package:flutter/material.dart';

class CollectorPanel extends StatefulWidget {
  const CollectorPanel({super.key});

  @override
  State<CollectorPanel> createState() => _CollectorPanelState();
}

class _CollectorPanelState extends State<CollectorPanel> {
  List<RequestData> requests = [
    RequestData('Usuario 1', 'Orgánico', 2),
    RequestData('Usuario 2', 'Inorgánico', 3),
    RequestData('Usuario 3', 'Orgánico', 1),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panel de Recolectores'),
      ),
      body: ListView.builder(
        itemCount: requests.length,
        itemBuilder: (context, index) {
          final request = requests[index];
          return ListTile(
            title: Text('Cliente: ${request.clientName}'),
            subtitle:
                Text('Residuo: ${request.wasteType}, Cantidad: ${request.quantity} KG'),
          );
        },
      ),
    );
  }
}

class RequestData {
  final String clientName;
  final String wasteType;
  final int quantity;

  RequestData(this.clientName, this.wasteType, this.quantity);
}