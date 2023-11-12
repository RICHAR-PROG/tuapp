import 'dart:async';

import 'package:flutter/widgets.dart' show ChangeNotifier;
import 'package:bioallin/presentation/widgets/views/maps/utils/maps_style.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class UbicacionController extends ChangeNotifier {
  final Map<MarkerId, Marker> _markers = {};
  Set<Marker> get markers => _markers.values.toSet();
  final _markersController = StreamController<String>.broadcast();
  Stream<String> get onMarkerTap => _markersController.stream;

  static const initialCameraPosition = CameraPosition(
      target: LatLng(-12.39769625482686, -74.86838076508566), zoom: 16);

  // ignore: non_constant_identifier_names
  static void OnMapCreated(GoogleMapController controller) {
    controller.setMapStyle(mapStyle);
  }

  void onTap(LatLng position) {
    final id = _markers.length.toString();
    final markerId = MarkerId(_markers.length.toString());
    final marker = Marker(
        markerId: markerId,
        position: position,
        draggable: true,
        onTap: () {
          _markersController.sink.add(id);
        },
        onDragEnd: (newPosition) {
          print("new position:  $newPosition");
        });
    _markers[markerId] = marker;
    notifyListeners();
  }

  @override
  void dispose() {
    _markersController.close();
    super.dispose();
  }
}
