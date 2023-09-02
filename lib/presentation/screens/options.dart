// ignore_for_file: library_private_types_in_public_api

import 'package:bioallin/presentation/screens/history_screen.dart';
import 'package:bioallin/presentation/screens/home_screen.dart';
import 'package:bioallin/presentation/screens/info_screen.dart';
import 'package:bioallin/presentation/screens/map_screen.dart';
import 'package:bioallin/presentation/screens/perfil_screen.dart';
import 'package:bioallin/presentation/screens/request_screen.dart';
import 'package:flutter/material.dart';

class BottomNavBarCurvedFb1 extends StatefulWidget {
  const BottomNavBarCurvedFb1({Key? key}) : super(key: key);

  @override
  _BottomNavBarCurvedFb1State createState() => _BottomNavBarCurvedFb1State();
}

class _BottomNavBarCurvedFb1State extends State<BottomNavBarCurvedFb1> {
  bool _perfilSelected = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double height = 56;

    const primaryColor = Color.fromARGB(255, 85, 212, 89);
    const secondaryColor = Colors.black54;
    // const  accentColor = const Color(0xffffffff);
    const backgroundColor = Colors.white;

    return BottomAppBar(
      color: Colors.transparent,
      elevation: 0,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(size.width, height + 6),
            painter: BottomNavCurvePainter(backgroundColor: backgroundColor),
          ),
          Center(
            heightFactor: 0.6,
            child: FloatingActionButton(
                backgroundColor: primaryColor,
                elevation: 0.1,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const RequestCollect()),
                  );
                },
                child: const Icon(Icons.delete_forever_rounded)),
          ),
          SizedBox(
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavBarIcon(
                  text: "Home",
                  icon: Icons.home_outlined,
                  selected: _perfilSelected,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                  defaultColor: secondaryColor,
                  selectedColor: primaryColor,
                ),
                NavBarIcon(
                  text: "Buscar",
                  icon: Icons.book,
                  selected: _perfilSelected,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const InfoScreen()),
                    );
                  },
                  defaultColor: secondaryColor,
                  selectedColor: primaryColor,
                ),
                const SizedBox(width: 56),
                NavBarIcon(
                    text: "Historial",
                    icon: Icons.history,
                    selected: _perfilSelected,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HistoryScreen()),
                      );
                    },
                    defaultColor: secondaryColor,
                    selectedColor: primaryColor),
                NavBarIcon(
                  text: "Perfil",
                  icon: Icons.person,
                  selected: _perfilSelected,
                  onPressed: () {
                    setState(() {
                      _perfilSelected = !_perfilSelected;
                    });

                    if (_perfilSelected) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PerfilScreen()),
                      );
                    }
                  },
                  selectedColor: primaryColor,
                  defaultColor: secondaryColor,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavCurvePainter extends CustomPainter {
  BottomNavCurvePainter(
      {this.backgroundColor = Colors.white, this.insetRadius = 38});

  Color backgroundColor;
  double insetRadius;
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 12);

    double insetCurveBeginnningX = size.width / 2 - insetRadius;
    double insetCurveEndX = size.width / 2 + insetRadius;
    double transitionToInsetCurveWidth = size.width * .05;
    path.quadraticBezierTo(size.width * 0.20, 0,
        insetCurveBeginnningX - transitionToInsetCurveWidth, 0);
    path.quadraticBezierTo(
        insetCurveBeginnningX, 0, insetCurveBeginnningX, insetRadius / 2);

    path.arcToPoint(Offset(insetCurveEndX, insetRadius / 2),
        radius: const Radius.circular(10.0), clockwise: false);

    path.quadraticBezierTo(
        insetCurveEndX, 0, insetCurveEndX + transitionToInsetCurveWidth, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 12);
    path.lineTo(size.width, size.height + 56);
    path.lineTo(
        0,
        size.height +
            56); //+56 here extends the navbar below app bar to include extra space on some screens (iphone 11)
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class NavBarIcon extends StatelessWidget {
  const NavBarIcon(
      {Key? key,
      required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed,
      this.selectedColor = const Color.fromARGB(255, 85, 212, 89),
      this.defaultColor = Colors.black54})
      : super(key: key);
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;
  final Color defaultColor;
  final Color selectedColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onPressed,
          splashColor: Colors.grey,
          highlightColor: Colors.grey,
          icon: Icon(
            icon,
            size: 25,
            color: selected ? selectedColor : defaultColor,
          ),
        ),
      ],
    );
  }
}
