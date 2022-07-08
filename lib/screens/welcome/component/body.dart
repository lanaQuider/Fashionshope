import 'package:flutter/material.dart';
import 'package:login/components/Rouned_button.dart';
import 'package:login/costant.dart';
import 'package:login/screens/Login/loginscreen.dart';


import 'background.dart';
class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;//this size give us the hight and width of our screen


    return SingleChildScrollView(
      child: background(child:

      Column(

      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,



      children: <Widget>[
         Text(

          "Welcome to our fashion shop",

          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),


        ),
        SizedBox(height: 0.02,),
        Image.asset("assets/icons/IMG_20220629_152803_326.jpg",height: size.height*0.5,width: size.width,
        ),
        SizedBox(height: size.height*0.04,),
        RoundedButton(text: "LOGIN",press: (){
          Navigator.push(context,MaterialPageRoute(builder: (context){return LogginScreen();
          }
          ),
          );

        }
        ),
        RoundedButton(text: "SIGHN UP",press: (){},color: primarylightcolor,Textcolor: Colors.black45 ,)


      ],
      ),
      ),
    );
  }
}




