// ignore_for_file: library_private_types_in_public_api

import 'package:bioallin/presentation/screens/history_screen.dart';
import 'package:bioallin/presentation/widgets/views/perfil.dart';
import 'package:flutter/material.dart';

// class BottomNavBarRaisedInsetFb1 extends StatefulWidget {
//   const BottomNavBarRaisedInsetFb1({Key? key}) : super(key: key);

//   @override
//   // ignore: library_private_types_in_public_api
//   _BottomNavBarRaisedInsetFb1State createState() =>
//       _BottomNavBarRaisedInsetFb1State();
// }

// class _BottomNavBarRaisedInsetFb1State
//     extends State<BottomNavBarRaisedInsetFb1> {

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     double height = 56;

//     const primaryColor = Colors.black26;
//     const secondaryColor = Colors.white;
//     // const accentColors = Color(0xffffffff);
//     const backgroundColor = Colors.green;

//     const shadowColor = Colors.white; //color of Navbar shadow
//     double elevation = 100; //Elevation of the bottom Navbar

//     return BottomAppBar(
//       color: Colors.transparent,
//       child: Stack(
//         children: [
//           CustomPaint(
//             size: Size(size.width, height),
//             painter: BottomNavCurvePainter(
//                 backgroundColor: backgroundColor,
//                 shadowColor: shadowColor,
//                 elevation: elevation),
//           ),
//           Center(
//             heightFactor: 0.6,
//             child: FloatingActionButton(
//                 backgroundColor: primaryColor,
//                 elevation: 0.1,
//                 onPressed: () {},
//                 child: const Icon(Icons.delete)),
//           ),
//           SizedBox(
//             height: height,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 NavBarIcon(
//                   text: "Home",
//                   icon: Icons.home_outlined,
//                   selected: true,
//                   onPressed: () {},
//                   defaultColor: secondaryColor,
//                   selectedColor: primaryColor,
//                 ),
//                 NavBarIcon(
//                   text: "Search",
//                   icon: Icons.book,
//                   selected: false,
//                   onPressed: () {},
//                   defaultColor: secondaryColor,
//                   selectedColor: primaryColor,
//                 ),
//                 const SizedBox(width: 56),
//                 NavBarIcon(
//                     text: "Cart",
//                     icon: Icons.history,
//                     selected: false,
//                     onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const HistoryScreen()),
//                   );
//                 },
//                     defaultColor: secondaryColor,
//                     selectedColor: primaryColor),
//                 NavBarIcon(
//                   text: "Calendar",
//                   icon: Icons.person,
//                   selected: false,
//                   onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => UserProfile()),
//                   );
//                 },
//                   selectedColor: primaryColor,
//                   defaultColor: secondaryColor,
//                 )
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BottomNavCurvePainter extends CustomPainter {
//   BottomNavCurvePainter(
//       {this.backgroundColor = Colors.white,
//       this.insetRadius = 38,
//       this.shadowColor = Colors.grey,
//       this.elevation = 100});

//   Color backgroundColor;
//   Color shadowColor;
//   double elevation;
//   double insetRadius;
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = backgroundColor
//       ..style = PaintingStyle.fill;
//     Path path = Path();

//     double insetCurveBeginnningX = size.width / 2 - insetRadius;
//     double insetCurveEndX = size.width / 2 + insetRadius;

//     path.lineTo(insetCurveBeginnningX, 0);
//     path.arcToPoint(Offset(insetCurveEndX, 0),
//         radius: const Radius.circular(41), clockwise: true);

//     path.lineTo(size.width, 0);

//     path.lineTo(size.width, size.height + 56);
//     path.lineTo(
//         0,
//         size.height +
//             56); //+56 here extends the navbar below app bar to include extra space on some screens (iphone 11)
//     canvas.drawShadow(path, shadowColor, elevation, true);
//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(CustomPainter oldDelegate) {
//     return false;
//   }
// }

// class NavBarIcon extends StatelessWidget {
//   const NavBarIcon(
//       {Key? key,
//       required this.text,
//       required this.icon,
//       required this.selected,
//       required this.onPressed,
//       this.selectedColor = Colors.black,
//       this.defaultColor = Colors.black54})
//       : super(key: key);
//   final String text;
//   final IconData icon;
//   final bool selected;
//   final Function() onPressed;
//   final Color defaultColor;
//   final Color selectedColor;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         IconButton(
//           onPressed: onPressed,
//           splashColor: Colors.black,
//           highlightColor: Colors.black,
//           icon: Icon(
//             icon,
//             size: 25,
//             color: selected ? selectedColor : defaultColor,
//           ),
//         ),
//       ],
//     );
//   }
// }

class BottomNavBarCurvedFb1 extends StatefulWidget {
  const BottomNavBarCurvedFb1({Key? key}) : super(key: key);

  @override
  _BottomNavBarCurvedFb1State createState() => _BottomNavBarCurvedFb1State();
}

class _BottomNavBarCurvedFb1State extends State<BottomNavBarCurvedFb1> {
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
                onPressed: () {},
                child: const Icon(Icons.delete)),
          ),
          SizedBox(
            height: height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                NavBarIcon(
                  text: "Home",
                  icon: Icons.home_outlined,
                  selected: true,
                  onPressed: () {},
                  defaultColor: secondaryColor,
                  selectedColor: primaryColor,
                ),
                NavBarIcon(
                  text: "Search",
                  icon: Icons.book,
                  selected: false,
                  onPressed: () {},
                  defaultColor: secondaryColor,
                  selectedColor: primaryColor,
                ),
                const SizedBox(width: 56),
                NavBarIcon(
                    text: "History",
                    icon: Icons.history,
                    selected: false,
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
                  selected: false,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const UserProfile()),
                    );
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
