import 'package:bioallin/presentation/widgets/views/maps/ubicaci%C3%B3n_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UbicacionPage extends StatefulWidget {
  const UbicacionPage({super.key});

  @override
  State<UbicacionPage> createState() => _UbicacionPageState();
}

class _UbicacionPageState extends State<UbicacionPage> {
  final _controller = UbicacionController();

  static const _initialCameraPosition = CameraPosition(
      target: LatLng(-12.39769625482686, -74.86838076508566), zoom: 15);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: GoogleMap(
          onMapCreated: UbicacionController.OnMapCreated,
          initialCameraPosition: _initialCameraPosition),
    );
  }
}
