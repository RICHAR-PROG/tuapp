import 'package:bioallin/presentation/screens/options.dart';
<<<<<<< HEAD
import 'package:bioallin/presentation/widgets/views/map.dart';
import 'package:flutter/material.dart';

class MapS extends StatelessWidget {
  const MapS({super.key});
=======
import 'package:bioallin/presentation/widgets/views/Ubicacion.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});
>>>>>>> 6723f86e31c0d539d31f5fb3a9f005ba3b0da112

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
<<<<<<< HEAD
        title: const Text(
          "Enviar Ubicación",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      // ignore: prefer_const_constructors
      body: MapScreen(),
=======
        automaticallyImplyLeading: false,
        title: const Text("Mapa",style: TextStyle(
          fontSize: 20
        ),),
        centerTitle: true ,
      ),
      // ignore: prefer_const_constructors
      body: Mapas(),
>>>>>>> 6723f86e31c0d539d31f5fb3a9f005ba3b0da112
      bottomNavigationBar: const BottomNavBarCurvedFb1(),
      // bottomNavigationBar: const BottomNavBarCurvedFb1(),
    );
  }
}
