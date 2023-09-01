// ignore: avoid_web_libraries_in_flutter
// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:bioallin/presentation/screens/map_screen.dart';

class Request extends StatelessWidget {
  const Request({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 9,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
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
          ButtonElev(),
        ]),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  ElevatedButton ButtonElev() {
    return ElevatedButton(
      onPressed: null,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        // side: BorderSide(color: Colors.yellow, width: 5),
        textStyle: const TextStyle(
            color: Color.fromARGB(255, 17, 213, 37),
            fontSize: 16,
            fontStyle: FontStyle.italic),
        // shadowColor: const Color.fromARGB(255, 244, 3, 7),
      ),
      child: const Text("Ir"),
    );
  }
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed,
      this.selectedColor = const Color.fromARGB(255, 85, 212, 89),
      this.defaultColor = Colors.black54})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final Color defaultColor;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
// class Personalizar extends StatelessWidget {
//   const Personalizar({Key? key}) : super(key: key);
//   final primaryColor = const Color(0xff4338CA);
//   final accentColor = const Color(0xffffffff);

//   @override
//   Widget build(BuildContext context) {
//     return Dialog(
//       elevation: 1,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
//       child: Container(
//         width: MediaQuery.of(context).size.width / 5,
//         height: MediaQuery.of(context).size.height / 9,
//         decoration: BoxDecoration(
//             border: Border.all(
//               color: const Color.fromARGB(255, 136, 236, 140),
//               width: 0.5,
//             ),
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(5.0),
//             boxShadow: [
//               BoxShadow(
//                   offset: const Offset(12, 26),
//                   blurRadius: 50,
//                   spreadRadius: 0,
//                   color: Colors.grey.withOpacity(.2)),
//             ]),
//         // ignore: prefer_const_constructors
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: const Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             // mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               SizedBox(
//                 height: 5,
//               ),
//               Text(
//                 "Perzonalizar:",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//               SizedBox(
//                 height: 15,
//               ),
//               Row(
//                 children: [
//                   Icon(
//                     Icons.show_chart,
//                     color: Colors.black,
//                     size: 14,
//                   ),
//                   SizedBox(
//                     width: 10,
//                   ),
//                   Text(
//                     "Tema",
//                     style: TextStyle(
//                       fontSize: 14,
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(
//                     width: 60,
//                   ),
//                   Text(
//                     "change",
//                     style: TextStyle(
//                       color: Colors.blue,
//                       fontFamily: AutofillHints.url,
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
