import 'package:flutter/material.dart';
import 'package:bioallin/presentation/screens/login_signup.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isMale = true;
  bool isRememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/vegetacion.jpg"),
                      fit: BoxFit.fill)),
            ),
          ),

          Positioned(
            top: 120,
            child: Container(
              height: 520,
              padding: EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 2,
              margin: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 15,
                        spreadRadius: 5),
                  ]),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          '''


REGISTRATE''',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          height: 2,
                          width: 100,
                          color: Colors.green,
                        ),
                        Text('''

Rellene sus datos''',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.blueGrey,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "NOMBRE Y APELLIDOS",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                      BuildTextField(
                          Icons.account_box_outlined, "Nombre y Apellidos", false, false),
                      Text(
                        "EMAIL",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                      BuildTextField(
                          Icons.email_outlined, "Email", false, true),
                      Text(
                        "CONTRASEÑA",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                      BuildTextField(
                          Icons.lock_outline, "Contraseña", true, false),
                      Text(
                        "CONFIRMAR CONTRASEÑA",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                      BuildTextField(
                          Icons.lock_outline, "Confirmar Contraseña", true, false),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          //logo
          Positioned(
              top: 45,
              right: 0,
              left: 0,
              child: Center(
                child: Container(
                    height: 130,
                    width: 130,
                    padding: EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(80),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: Offset(0, 1))
                        ]),
                    child: Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/bioallin.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(120),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 0, 196, 7)
                                    .withOpacity(.5),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: Offset(0, 1))
                          ]),
                    )),
              )),
          Positioned(
            top: 640,
            right: 0,
            left: 0,
            child: Container(
              height: 90,
              decoration: BoxDecoration(color: Colors.green),
              child: Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            print("Sesion iniciada");
                          },
                          child: Text(
                            "REGISTRAR",
                            style: TextStyle(fontSize: 18, color: Colors.white),
                          ))
                    ],
                  )),
            ),
          ),
          Positioned(
            top: 570,
            right: 0,
            left: 0,
            child: Container(
              height: 70,
              // decoration: BoxDecoration(
              //   color: Colors.green
              // ),
              child: Container(
                  padding: EdgeInsets.only(top: 10),
                  color: Colors.white,
                  child: Column(
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginSignupScreen()),
                            );
                          },
                          child: Text(
                            "Ya tengo una cuenta",
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ))
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }

  Widget BuildTextField(
      IconData icon, String hintText, bool isPassword, bool isMail) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        obscureText: isPassword,
        keyboardType: isMail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.blueGrey,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          contentPadding: EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 15, color: Colors.blueGrey),
        ),
      ),
    );
  }
}
