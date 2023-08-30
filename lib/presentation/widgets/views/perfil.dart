import 'package:flutter/material.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String name = "Richar Quispe";
    const String email = "richar@example.com";
    const String bio = "¡Hola! Soy un apasionado desarrollador de Flutter.";

    return const  Scaffold(
      body: Padding(
        padding:  EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(
                'assets/images/user.jpg',
              ),
            ),
            SizedBox(height: 16),
            Text(
              name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              email,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
            Text(
              bio,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            
          ],
        ),
      ),
    );
  }
}


class SplashButton extends StatelessWidget {
  final String title;
  final String subText;
  final Function() onPressed;
  const SplashButton(
      {required this.title,
      required this.onPressed,
      this.subText = "",
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      child: InkWell(
        onTap: onPressed,
        splashColor: Colors.purpleAccent,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 75,
          padding: const EdgeInsets.all(25.0),
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.circular(5.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              Text(
                subText,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ],
          ),
        ),
      ),
    );
  }
}