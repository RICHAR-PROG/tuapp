import 'package:bioallin/presentation/screens/options.dart';
import 'package:bioallin/presentation/widgets/views/perfil.dart';
import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  const PerfilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil",style: TextStyle(
          fontSize: 20
        ),),
        centerTitle: true ,
      ),
      // ignore: prefer_const_constructors
      body: UserProfile(),
      bottomNavigationBar: const BottomNavBarCurvedFb1(),
      // bottomNavigationBar: const BottomNavBarCurvedFb1(),
    );
  }
}
