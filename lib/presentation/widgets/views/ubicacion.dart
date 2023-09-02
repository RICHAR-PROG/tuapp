import 'package:flutter/material.dart';

class Mapas extends StatelessWidget {
  const Mapas({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child:Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
               
            ),
            child: Image.asset(
                  'assets/images/ubicaciones.png',
                  fit: BoxFit.cover,
                ),
            
          ),
    );
  }
}
