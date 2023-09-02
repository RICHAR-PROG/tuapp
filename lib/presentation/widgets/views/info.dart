import 'package:flutter/material.dart';

class Informacion extends StatelessWidget {
  const Informacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 30,),
          const Center(
            child: Text(
              'Nuestros recolectores de los desechos organicos, inorganicos, teecnologicos y peligrosos estan a su disposicion del dia.',
              style: TextStyle(
                fontSize: 18,
                fontFamily: AutofillHints.nickname,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'VEA SI HAY RECOLECTORES DISPONIBLES',
              style: TextStyle(
                fontSize: 18,
                fontFamily: AutofillHints.nickname,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromRGBO(12, 153, 15, 1),
                width: 3.0,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/recolector.png',
                  fit: BoxFit.cover,
                ),
                const SizedBox(height: 10),
                const Text(
                  'Salvemos nuestro futuro',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Actualmente contamos con',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Color.fromRGBO(12, 153, 15, 1),
                width: 3.0,
              ),
            ),
            child: const Center(
              child: Text(
                '3',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(12, 153, 15, 1),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            'Recolectores disponibles',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}