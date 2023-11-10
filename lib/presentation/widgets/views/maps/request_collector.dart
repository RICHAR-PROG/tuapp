import 'dart:html';

import 'package:bioallin/presentation/screens/map_screen.dart';
import 'package:flutter/material.dart';

class Request extends StatelessWidget {
  const Request({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width / 60,
        height: MediaQuery.of(context).size.height / 10,
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 255, 255, 255),
                spreadRadius: 0,
                blurRadius: 0,
                offset: Offset(0, 0),
              )
            ]),
        padding: const EdgeInsets.all(15),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          const Icon(Icons.location_on,
              color: Color.fromARGB(255, 231, 50, 18)),
          const Text('Ubicación'),
          ButtonElev(context),
        ]),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  ElevatedButton ButtonElev(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MapS()),
        );
      },
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color.fromARGB(255, 17, 213, 37),
        primary: Colors.white,
        textStyle: const TextStyle(
          color: Color.fromARGB(255, 17, 213, 37),
          fontSize: 16,
          fontStyle: FontStyle.italic,
        ),
      ),
      child: const Text("a ubicación"),
    );
  }
}
