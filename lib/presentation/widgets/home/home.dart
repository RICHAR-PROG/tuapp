import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        children: [
          Text(
            "Tipos de residuos",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: AutofillHints.nickname,
                fontWeight: FontWeight.bold),
          ),
           IllustrationFb1(),
          IllustrationFb4(),
          IllustrationFb2(),
          IllustrationFb3(),
          
          
          
        ],
      ),
    );
  }
}



class IllustrationFb4 extends StatelessWidget {
  const IllustrationFb4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 10,
              spreadRadius: 4,
            ),
          ],
        ),
        child: Stack(
          children: [
            
            Image.network(
              "https://img.freepik.com/vector-premium/residuos-organicos-recoleccion-abono-alimentario-platano-huevo-espina-pescado-tocon-manzana_165488-744.jpg?w=740",
              fit: BoxFit.contain,
            ),
            const Center(
              child: Text(
                "Residuo Organico",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class IllustrationFb3 extends StatelessWidget {
  const IllustrationFb3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 10,
              spreadRadius: 4,
            ),
          ],
        ),
        child: Stack(
          children: [
            Image.network(
              "https://img.freepik.com/vector-gratis/coleccion-iconos-isometricos-basura-electronica-iconos-aislados-contenedores-basura-baterias-agotadas-campos-eliminacion-ilustracion-vectorial_1284-71353.jpg?w=1060&t=st=1693284157~exp=1693284757~hmac=799d9e857b43cf8f7b19ec83996d5713a756c9e8e3ab28ca04af265a1ab0f56a",
              fit: BoxFit.contain,
            ),
            const Center(
              child: Text(
                "Residuo Tecnologico",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class IllustrationFb2 extends StatelessWidget {
  const IllustrationFb2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 10,
              spreadRadius: 4,
            ),
          ],
        ),
        child: Stack(
          children: [
            Image.network(
              "https://img.freepik.com/vector-gratis/fondo-residuos-coronavirus_23-2148736667.jpg?w=1060&t=st=1693284219~exp=1693284819~hmac=d191d41bac43c20b21321a3b9114e7372517c4d6664f5af39bc5f4912268b330",
              fit: BoxFit.contain,
            ),
            const Center(
              child: Text(
                "Residuo Peligroso",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class IllustrationFb1 extends StatelessWidget {
  const IllustrationFb1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 10,
              spreadRadius: 4,
            ),
          ],
        ),
        child: Stack(
          children: [
            Image.network(
              "https://img.freepik.com/vector-gratis/contaminacion-basura-basura-objetos-basura-aislados_1308-34354.jpg?w=1380&t=st=1693286404~exp=1693287004~hmac=e1b33ab20523c0816944d56ae0f93053d694da977073b82a8289ecc821f0170c",
              fit: BoxFit.contain,
            ),
            const Center(
              child: Text(
                "Residuo inorganico",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}