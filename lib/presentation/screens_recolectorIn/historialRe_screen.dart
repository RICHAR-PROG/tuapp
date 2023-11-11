import 'package:bioallin/presentation/screens_recolectorIn/options.dart';
import 'package:bioallin/presentation/widgets/views_recolectorIn/historialRe.dart';
import 'package:flutter/material.dart';

class HistorialReScreen  extends StatelessWidget {
  const HistorialReScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Historial de Recoleccion",style: TextStyle(
          fontSize: 20
        ),),
        centerTitle: true ,
      ),
      // ignore: prefer_const_constructors
      body: HistorialResiduos(),
      /*body: SingleChildScrollView(
        child:  const CustomPaint(
          // painter: BottomNavCurvePainter(),
          child:HistorialResiduos(),
        ),
      ),*/
      bottomNavigationBar: const BottomNavBarCurvedFb1(),
      // bottomNavigationBar: const BottomNavBarCurvedFb1(),
    );
  }
}