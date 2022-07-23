import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: ClipPath(
            clipper: InvertedBottomBorder(),
            child: Container(
                height: 450,
                width: 450,
                color: Colors.blueAccent,
                child: const Image(
                  image: AssetImage('assets/city-building.png'),
                )),
          ),
        ),
      ),
    );
  }
}

class InvertedBottomBorder extends CustomClipper<Path> {
  InvertedBottomBorder({
    this.left = true,
    this.right = true,
    this.radius = 40,
  })  : assert(left != null),
        assert(right != null),
        assert(radius != null);

  final bool left;

  final bool right;

  final double radius;

  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height - (right ? 0 : radius))
      ..quadraticBezierTo(size.width, size.height - radius, size.width - radius,
          size.height - radius)
      ..lineTo(radius, size.height - radius)
      ..quadraticBezierTo(
          0, size.height - radius, 0, size.height - (left ? 0 : radius))
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
