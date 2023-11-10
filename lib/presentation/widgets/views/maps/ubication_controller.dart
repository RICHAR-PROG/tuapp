// TODO Implement this library.

import 'package:bioallin/presentation/widgets/views/maps/utils/maps_style.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UbicacionController {
  // ignore: non_constant_identifier_names
  static void OnMapCreated(GoogleMapController controller) {
    controller.setMapStyle(mapStyle);
  }
}
