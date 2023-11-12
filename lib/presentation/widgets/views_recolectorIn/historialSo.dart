import 'package:flutter/material.dart';

class HistorialSolicitadores extends StatelessWidget {
  const HistorialSolicitadores({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: InfoCard(
            onMoreTap: () {},
            title: 'SOLICITUD 1',
          ),
        )
      ]),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String title;
  final String body;
  final Function() onMoreTap;

  final String subInfoTitle;
  final String subInfoText;
  final String subInfoUbicacion;
  final Widget subIcon;

  const InfoCard(
      {required this.title,
      this.body =
          """Tiene una solicitud pendiente del señor(ra) Juan Mendez 😊""",
      required this.onMoreTap,
      this.subIcon = const CircleAvatar(
        backgroundColor: Colors.green,
        radius: 25,
        child: Icon(
          Icons.location_on,
          color: Colors.white,
        ),
      ),
      this.subInfoText = "5 kilos",
      this.subInfoTitle = "El residuo es: vidrio, papel",
      this.subInfoUbicacion = "Jr. Manuel Prado",
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: const Offset(0, 4),
            blurRadius: 10,
            spreadRadius: 0,
          )
        ],
        /*gradient: const RadialGradient(
            colors: [
              Color.fromARGB(255, 239, 245, 234),
              Color.fromARGB(255, 239, 245, 234),
            ],
            focal: Alignment.topCenter,
            radius: .85,
          )*/
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: 75,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  gradient: const LinearGradient(colors: [
                    Colors.white,
                    Color.fromARGB(255, 214, 246, 214)
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: GestureDetector(
                  onTap: onMoreTap,
                  child: const Center(
                      child: Text(
                    "30/08/23",
                    style: TextStyle(color: Colors.green),
                  )),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          Text(
            body,
            style:
                TextStyle(color: Colors.black.withOpacity(.75), fontSize: 14),
          ),
          const SizedBox(height: 15),
          Container(
            width: double.infinity,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Color.fromARGB(255, 253, 253, 253),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: const Offset(0, 4),
                  blurRadius: 10,
                  spreadRadius: 0,
                )
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  subIcon,
                  const SizedBox(width: 10),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        subInfoUbicacion, // Agrega el Text para mostrar la ubicación
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(subInfoTitle),
                      Text(
                        subInfoText,
                        style: const TextStyle(
                          color: Colors.green,
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
