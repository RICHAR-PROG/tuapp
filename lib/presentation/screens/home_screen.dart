import 'package:bioallin/presentation/screens/options.dart';
import 'package:bioallin/presentation/widgets/home/home.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: const Padding(
        //   padding: EdgeInsets.all(2.0),
        //   child: CircleAvatar(
        //     backgroundImage: NetworkImage(
        //         "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNlYc4hgIWCe8l-JD3V-39xTRk9YHYBd4mzDzoyP4rv47uZA_FZh6YcRKq_E63jU446I0&usqp=CAU"),
        //   ),
        // ),
        title: const Text("Welcome to Bioallin",style: TextStyle(
          fontSize: 20
        ),),
        centerTitle: true ,
      ),
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        
        child:  const CustomPaint(
          // painter: BottomNavCurvePainter(),
          child: Home(),
          
        ),
        
      ),
      bottomNavigationBar: const BottomNavBarCurvedFb1(),
      // bottomNavigationBar: const BottomNavBarCurvedFb1(),
    );
  }
}
