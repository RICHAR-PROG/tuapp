import 'package:bioallin/presentation/firebase_auth_implement/firebase_auth_services.dart';
import 'package:bioallin/presentation/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:bioallin/presentation/screens/login_signup.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
 bool showOptions = false;
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
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/vegetacion.jpg"),
                      fit: BoxFit.fill)),
            ),
          ),

          Positioned(
            top: 120,
            child: Container(
              height: 520,
              padding: const EdgeInsets.all(20),
              width: MediaQuery.of(context).size.width - 2,
              margin: const EdgeInsets.symmetric(horizontal: 2),
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
                        const Text(
                          '''


REGISTRATE''',
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Bold',
                              color: Colors.black),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          height: 2,
                          width: 100,
                          color: Colors.green,
                        ),
                        const Text(
                          '''

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
                  margin: const EdgeInsets.only(top: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "NOMBRE Y APELLIDOS",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                      BuildTextField(
                          Icons.account_box_outlined,
                          "Nombre y Apellidos",
                          false,
                          false,
                          _usernameController),
                      const Text(
                        "EMAIL",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                      BuildTextField(Icons.email_outlined, "Email", false, true,
                          _emailController),
                      const Text(
                        "CONTRASEÑA",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                      BuildTextField(Icons.lock_outline, "Contraseña", true,
                          false, _passwordController),
                      const Text(
                        "CONFIRMAR CONTRASEÑA",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.blueGrey),
                      ),
                      BuildTextField(Icons.lock_outline, "Confirmar Contraseña",
                          true, false, _confirmPasswordController),
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
                    padding: const EdgeInsets.all(1),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(80),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(.3),
                              spreadRadius: 1,
                              blurRadius: 2,
                              offset: const Offset(0, 1))
                        ]),
                    child: Container(
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              image: AssetImage("assets/images/bioallin.png"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(120),
                          boxShadow: [
                            BoxShadow(
                                color: const Color.fromARGB(255, 0, 196, 7)
                                    .withOpacity(.5),
                                spreadRadius: 1,
                                blurRadius: 2,
                                offset: const Offset(0, 1))
                          ]),
                    )),
              )),

          Positioned(
            top: 740,
            right: 10,
            left: 10,
            
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 153, 222, 153)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (!showOptions)
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          showOptions = true;
                        });
                      },
                      child: const Text(
                        'Mostrar opciones',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  if (showOptions)
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Acción para la opción "Usuario"
                            // Navegar al panel del usuario
                          },
                          child: const Text(
                            'Usuario',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Acción para la opción "Recolector orgánico"
                            // Navegar al panel del recolector orgánico
                          },
                          child: const Text(
                            'Recolector Orgánico',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {
                            // Acción para la opción "Recolector inorgánico"
                            // Navegar al panel del recolector inorgánico
                          },
                          child: const Text(
                            'Recolector Inorgánico',
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 670,
            right: 0,
            left: 0,
            child: Container(
              height: 70,
              // decoration: BoxDecoration(
              //   color: Colors.green
              // ),
              child: Container(
                  padding: const EdgeInsets.only(top: 10),
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
                          child: const Text(
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

  // ignore: non_constant_identifier_names
  Widget BuildTextField(IconData icon, String hintText, bool isPassword,
      bool isMail, TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        controller: controller,
        obscureText: isPassword,
        keyboardType: isMail ? TextInputType.emailAddress : TextInputType.text,
        decoration: InputDecoration(
          prefixIcon: Icon(
            icon,
            color: Colors.blueGrey,
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blueGrey),
            borderRadius: BorderRadius.all(Radius.circular(35.0)),
          ),
          contentPadding: const EdgeInsets.all(10),
          hintText: hintText,
          hintStyle: const TextStyle(fontSize: 15, color: Colors.blueGrey),
        ),
      ),
    );
  }

  void _signUp() async {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;
    String confirmPassword = _confirmPasswordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null) {
      print("User is succesfully Created.");
      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    } else {
      print("Some error happend");
    }
  }
}
