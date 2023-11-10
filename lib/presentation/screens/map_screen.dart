import 'package:bioallin/presentation/screens/options.dart';
import 'package:bioallin/presentation/widgets/views/maps/ubicacion.dart';
import 'package:flutter/material.dart';

class MapS extends StatelessWidget {
  const MapS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Enviar Ubicación",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      // ignore: prefer_const_constructors
      body: UbicacionPage(),
      bottomNavigationBar: const BottomNavBarCurvedFb1(),
      // bottomNavigationBar: const BottomNavBarCurvedFb1(),
    );
  }
}
