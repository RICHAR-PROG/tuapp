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
       
        child:  Stack(
          children: [
            
           Image.asset('../../../../assets/images/organico.png'),
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
        
        child: Stack(
          children: [
            Image.asset('../../../../assets/images/organico.png'),
            
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
       
        child: Stack(
          children: [
           Image.asset('../../../../assets/images/organico.png'),
            
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
            Image.asset('../../../../assets/images/organico.png'),
           
          ],
        ),
      ),
    );
  }
}