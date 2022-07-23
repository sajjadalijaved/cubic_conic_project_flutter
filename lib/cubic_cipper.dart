import 'package:flutter/cupertino.dart';

class MyCubic extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    Path path = Path();
    path.moveTo(0, height / 2 + 30);
    path.lineTo(0, height);
    path.cubicTo(
        width * .1, height * .70, width * .2, height * .70, width * .3, height);
    path.cubicTo(
        width * .3, height * .70, width * .4, height * .70, width * .5, height);
    path.cubicTo(
        width * .5, height * .70, width * .6, height * .70, width * .7, height);
    path.cubicTo(
        width * .7, height * .70, width * .95, height * .70, width, height);
    // path.cubicTo(
    //     width * .9, height * .70, width * .99, height * .70, width, height);

    path.lineTo(width, height);
    path.lineTo(width, 0);
    path.cubicTo(
        width * .95, height * .20, width * .80, height * .20, width * .80, 0);
    path.cubicTo(
        width * .75, height * .20, width * .60, height * .20, width * .60, 0);
    path.cubicTo(
        width * .50, height * .20, width * .35, height * .20, width * .40, 0);
    path.cubicTo(
        width * .30, height * .20, width * .15, height * .20, width * .20, 0);
    path.cubicTo(width * .10, height * .20, width * .01, height * .20, 0, 0);
    // path.cubicTo(width * .20, height * .20, width * .10, height * .20, 0, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class MyConic extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    Path path = Path();
    path.moveTo(0, 0);
    path.conicTo(width / 2 + 5, height / 2, width, 0, 1);

    path.conicTo(width / 2 + 10, height / 2, width, height, 2.5);
    // path.conicTo(width * .60, height / 2, 0, height, 1);
    path.lineTo(0, height);
    path.conicTo(width / 2 + 10, height / 2, 0, 0, 2.5);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class SimpleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    Path path = Path();
    path.lineTo(0.0, height - 120);
    path.lineTo(width, height);
    path.lineTo(width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(0.0, size.height - 150);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 150);
    path.lineTo(size.width, 0.0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
