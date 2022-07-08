import 'package:flutter/material.dart';

import '../costant.dart';


class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback press;
  final  color,Textcolor;


  const RoundedButton({
    Key? key,

    required this.press,
    this.color=primarycolor,required this.text,this.Textcolor=Colors.white,
  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;//this size give us the hight and width of our screen

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width:size.width*0.8
      ,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20,horizontal: 40),
            backgroundColor: color

            ,
          ),
          onPressed:press,
          child: Text(text,style:TextStyle(color:Textcolor,)
          ),
        ),
      ),
    );
  }
}