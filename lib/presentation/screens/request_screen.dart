import 'package:bioallin/presentation/screens/options.dart';
import 'package:bioallin/presentation/widgets/views/request_collector.dart';
import 'package:flutter/material.dart';

class RequestCollect extends StatelessWidget {
  const RequestCollect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Solicitar Recolector",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      // ignore: prefer_const_constructors
      body: Request(),
      bottomNavigationBar: const BottomNavBarCurvedFb1(),
      // bottomNavigationBar: const BottomNavBarCurvedFb1(),
    );
  }
}
