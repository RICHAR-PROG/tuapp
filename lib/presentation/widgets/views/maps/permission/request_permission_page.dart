import 'package:bioallin/presentation/widgets/views/maps/permission/request_permission_controller.dart';
import 'package:bioallin/presentation/widgets/views/maps/ubicacion.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class RequestPermissionPage extends StatefulWidget {
  const RequestPermissionPage({super.key});

  @override
  State<RequestPermissionPage> createState() => _RequestPermissionPageState();
}

class _RequestPermissionPageState extends State<RequestPermissionPage> {
  final _controller = RequestPermissionController(Permission.locationWhenInUse);

  @override
  void initState() {
    super.initState();
    _controller.onStatusChanged.listen(
      (status) {
        if (status == PermissionStatus.granted) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const UbicacionPage()),
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              width: double.infinity,
              height: double.infinity,
              alignment: Alignment.center,
              child: ElevatedButton(
                child: const Text("Allow"),
                onPressed: () {
                  _controller.request();
                },
              ))),
    );
  }
}
