import 'package:bioallin/presentation/firebase_auth_implement/firebase_auth_services.dart';
import 'package:bioallin/presentation/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bioallin/presentation/screens/signup.dart';

class LoginSignupScreen extends StatefulWidget {
  @override
  _LoginSignupScreenState createState() => _LoginSignupScreenState();
}

class _LoginSignupScreenState extends State<LoginSignupScreen> {

  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
                      image: AssetImage("assets/images/vegetacion.jpg"),
                      fit: BoxFit.fill)),
            ),
          ),

          Positioned(
            top: 150,
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



INICIAR SESION''',
                          style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 5),
                          height: 2,
                          width: 130,
                          color: Colors.green,
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
                        "EMAIL",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                      BuildTextField(
                          Icons.email_outlined, "Email", false, true, _emailController),
                      Text(
                        "CONTRASEÑA",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                      BuildTextField(
                          Icons.lock_outline, "Contraseña", true, false, _passwordController),
                      TextButton(
                          onPressed: () {
                            print("OK");
                          },
                          child: Text("¿Olvide mi contraseña?",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black)))
                    ],
                  ),
                ),
              ]),
            ),
          ),
          //logo
          Positioned(
              top: 80,
              right: 0,
              left: 0,
              child: Center(
                child: Container(
                    height: 150,
                    width: 150,
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
                              image: AssetImage("assets/images/bioallin.png"),
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
                          onPressed: _signIn,
                          child: Text(
                            "INICIAR SESION",
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
                                  builder: (context) => SignupScreen()),
                            );
                          },
                          child: Text(
                            "No tengo una cuenta",
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
      IconData icon, String hintText, bool isPassword, bool isMail, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: TextField(
        controller: controller,
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

  void _signIn() async {
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if(user != null){
      print("User is succesfully SignIn");
      Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen()),
      );
    } else{
      print("Some error happend");
    }
  }
}
