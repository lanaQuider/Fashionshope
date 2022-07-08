import 'package:flutter/material.dart';
class background extends StatelessWidget {
  final Widget child;
  const background({
    Key? key,
    required this.child,

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;//this size give us the hight and width of our screen
    return Container(
      height:size.height,
      width:double.infinity,
      child: Stack(
        children:<Widget> [Positioned(child:Image.asset("assets/images/maintop.png",
          width:size.width*0.28,
        ),
        ),
          Positioned(bottom: -47,
            left: 0,
            child:Image.asset("assets/images/mainbootom.png",width:size.width*0.2,
            ),
          ),
          child,



        ],

      ),



    );
  }
}