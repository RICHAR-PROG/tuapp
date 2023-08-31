import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: () async {
            final DateTime? newDate = await showDatePicker(
              context: context,
              initialDate: DateTime(2023, 08, 30),
              firstDate: DateTime(2017, 1),
              lastDate: DateTime(2025, 7),
              helpText: 'Seleciona la fecha ',
            );
            if (newDate != null) {
              // Aquí puedes realizar acciones con la fecha seleccionada
            }
          },
          child: const Text('Seleccionar fecha'),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: InfoCard(
            onMoreTap: () {},
            title: 'Residuo inorgánico ',
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
  final Widget subIcon;

  const InfoCard(
      {required this.title,
      this.body =
          """Aqui usted señora mia arrojo exitosamente su residuo, ¡siga asi puntual! 😊""",
      required this.onMoreTap,
      this.subIcon = const CircleAvatar(
        backgroundColor: Colors.green,
        radius: 25,
        child: Icon(
          Icons.deselect_sharp,
          color: Colors.white,
        ),
      ),
      this.subInfoText = "545 kilos",
      this.subInfoTitle = "Residuo inorgánico ",
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(.05),
              offset: const Offset(0, 10),
              blurRadius: 0,
              spreadRadius: 0,
            )
          ],
          gradient: const RadialGradient(
            colors: [
              Color.fromARGB(255, 118, 221, 228),
              Color.fromARGB(255, 95, 197, 213)
            ],
            focal: Alignment.topCenter,
            radius: .85,
          )),
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
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                width: 75,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  gradient: const LinearGradient(
                      colors: [Colors.white, Colors.white],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter),
                ),
                child: GestureDetector(
                  onTap: onMoreTap,
                  child: const Center(
                      child: Text(
                    "30/08/2023",
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
                TextStyle(color: Colors.white.withOpacity(.75), fontSize: 14),
          ),
          const SizedBox(height: 15),
          Container(
            width: double.infinity,
            height: 75,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25.0),
              color: Colors.white,
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
