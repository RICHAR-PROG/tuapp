import 'package:bioallin/presentation/widgets/views/maps/utils/maps_style.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UbicacionController {
  static void OnMapCreated(GoogleMapController controller) {
    controller.setMapStyle(mapStyle);
  }
}
