import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String name = "Richar Quispe";
    const String email = "richar@example.com";
    const String bio = "¡Hola! Soy un apasionado desarrollador de Flutter.";

    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                'assets/images/user.jpg',
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Text(
                name,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Text(
                email,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 16),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 1.0,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: const Text(
                bio,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}