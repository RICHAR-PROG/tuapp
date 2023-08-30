import 'package:bioallin/presentation/screens/options.dart';
import 'package:bioallin/presentation/screens/perfil_screen.dart';
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
<<<<<<< HEAD
              backgroundImage: AssetImage(
                'assets/images/user.jpg',
              ),
=======
              child: Image(image: AssetImage('assets/images/user.jpg')),
>>>>>>> 3727543edacd5945fac8acd10b8f967f76608585
            ),
            const SizedBox(height: 16),
            const Text(
              name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              email,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              bio,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
            CommentItem(
              title: 'richar',
              subtitle: 'quispe',
              comment: 'holamundo como tan',
              onLike: () {
                // Lógica para manejar el evento de "Me gusta"
              },
              onMenuOpen: () {
                // Lógica para manejar el evento de abrir el menú
              },
            )
          ],
        ),
      ),
    );
  }
}
<<<<<<< HEAD

class CommentItem extends StatelessWidget {
  const CommentItem(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.comment,
      this.profileImgUrl,
      required this.onLike,
      required this.onMenuOpen})
      : super(key: key);

  final String title;
  final String subtitle;
  final String comment;
  final String? profileImgUrl;
  final Function onLike;
  final Function onMenuOpen;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
            foregroundImage:
                NetworkImage(profileImgUrl != null ? profileImgUrl! : ""),
            child: const Icon(Icons.account_circle)),
        const SizedBox(width: 10),
        Expanded(
          flex: 7,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
              ),
              const SizedBox(height: 8),
              Text(comment,
                  style: const TextStyle(color: Colors.black87, fontSize: 12))
            ],
          ),
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            LikeButton(onPressed: () {}, color: Colors.black87),
            IconButton(
              icon: const Icon(Icons.more_vert_outlined),
              onPressed: () {},
            ),
          ],
        ),
      ],
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton(
      {Key? key, required this.onPressed, this.color = Colors.black12})
      : super(key: key);
  final Function onPressed;
  final Color color;
  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: IconButton(
      icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border,
          color: widget.color),
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
        widget.onPressed();
      },
    ));
  }
}
=======
>>>>>>> 3727543edacd5945fac8acd10b8f967f76608585
