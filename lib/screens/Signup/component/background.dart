import 'package:flutter/material.dart';
class Background extends StatelessWidget {
  final Widget child;
  const Background({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        height: size.height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Positioned(
              left: 0,
              top: 0,
              child: Image.asset(
                "assets/images/sighnuptop.png",
                width: size.width * 0.3,
              ),
            ),
            Positioned(
              left: 0,
              bottom: -47,
              child: Image.asset(
                "assets/images/mainbootom.png",
                width: size.width * 0.2,
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
