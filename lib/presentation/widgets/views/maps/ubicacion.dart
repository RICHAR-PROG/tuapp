import 'package:bioallin/presentation/screens/request_screen.dart';
import 'package:bioallin/presentation/widgets/views/maps/ubication_controller.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';

class UbicacionPage extends StatelessWidget {
  const UbicacionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<UbicacionController>(
      create: (_) {
        final controller = UbicacionController();

        controller.onMarkerTap.listen((String id) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const RequestCollect()),
          );
        });

        return controller;
      },
      child: Scaffold(
        body: Consumer<UbicacionController>(
          builder: (_, controller, __) => GoogleMap(
            onMapCreated: UbicacionController.OnMapCreated,
            initialCameraPosition: UbicacionController.initialCameraPosition,
            compassEnabled: true,
            markers: controller.markers,
            onTap: controller.onTap,
          ),
        ),
      ),
    );
  }
}
