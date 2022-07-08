import 'package:flutter/material.dart';

class background extends StatelessWidget {
  final Widget child;
  const background({
    Key? key,
    required this.child,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        height:size.height,
        child: Stack(alignment: Alignment.center,
          children: <Widget> [
            Positioned(
              top:0,
              left:0,
              child: Image.asset("assets/images/maintop.png",
                  width: size.width*0.28
              ),
            ),
            Positioned(

                right:0,
                bottom: 0,
                child:
                Image.asset("assets/images/logginbottom.png",
                    width: size.width*0.4)
            ),
            child
          ],
        ),
      ),
    );
  }
}
