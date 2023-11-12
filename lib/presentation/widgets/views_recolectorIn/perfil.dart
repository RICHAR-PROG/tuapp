import 'package:flutter/material.dart';

class perfilRecolector extends StatelessWidget {
  const perfilRecolector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(
              'assets/images/user.jpg',
            ),
          ),
          DialogFb2(),
          Personalizar(),
          HelpSupport()
        ],
      ),
    );
  }
}

class DialogFb2 extends StatelessWidget {
  const DialogFb2({Key? key}) : super(key: key);
  final primaryColor = const Color(0xff4338CA);
  final accentColor = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 136, 236, 140),
              width: 0.5,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.2)),
            ]),
        // ignore: prefer_const_constructors
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                "Datos:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.black,
                    size: 14,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Jose Huaman Perez ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: AutofillHints.name,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.mail_lock_outlined,
                    color: Colors.black,
                    size: 14,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "joseperez@gmail.com",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: AutofillHints.email),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.password,
                    color: Colors.black,
                    size: 14,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "change",
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: AutofillHints.url,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Personalizar extends StatelessWidget {
  const Personalizar({Key? key}) : super(key: key);
  final primaryColor = const Color(0xff4338CA);
  final accentColor = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        height: MediaQuery.of(context).size.height / 9,
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 136, 236, 140),
              width: 0.5,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.2)),
            ]),
        // ignore: prefer_const_constructors
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                "Perzonalizar:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.show_chart,
                    color: Colors.black,
                    size: 14,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Tema",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 60,
                  ),
                  Text(
                    "change",
                    style: TextStyle(
                      color: Colors.blue,
                      fontFamily: AutofillHints.url,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HelpSupport extends StatelessWidget {
  const HelpSupport({Key? key}) : super(key: key);
  final primaryColor = const Color(0xff4338CA);
  final accentColor = const Color(0xffffffff);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Container(
        width: MediaQuery.of(context).size.width / 5,
        height: MediaQuery.of(context).size.height / 6,
        decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 136, 236, 140),
              width: 0.5,
            ),
            color: Colors.white,
            borderRadius: BorderRadius.circular(5.0),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(12, 26),
                  blurRadius: 50,
                  spreadRadius: 0,
                  color: Colors.grey.withOpacity(.2)),
            ]),
        // ignore: prefer_const_constructors
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 5,
              ),
              Text(
                "Soporte:",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Icon(
                    Icons.help,
                    color: Colors.black,
                    size: 14,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Ayuda y Soporte",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: AutofillHints.name,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.contact_page,
                    color: Colors.black,
                    size: 14,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Contactanos",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontFamily: AutofillHints.email),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    Icons.policy,
                    color: Colors.black,
                    size: 14,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Politicas  de privacidad",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
