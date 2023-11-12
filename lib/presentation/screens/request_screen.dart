import 'package:bioallin/presentation/screens/options.dart';
import 'package:bioallin/presentation/widgets/views/request_collector.dart';
import 'package:flutter/material.dart';

class RequestCollect extends StatelessWidget {
  const RequestCollect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Solicitar Recolector",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            decorationStyle: TextDecorationStyle.double,
            fontFamily: AutofillHints.addressCity,
          ),
        ),
        centerTitle: true,
      ),
      // ignore: prefer_const_constructors
      body: SolicitarRecolector(),
      bottomNavigationBar: const BottomNavBarCurvedFb1(),
      // bottomNavigationBar: const BottomNavBarCurvedFb1(),
    );
  }
}
