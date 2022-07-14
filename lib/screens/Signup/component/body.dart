import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login/components/Rouned_button.dart';
import 'package:login/components/already_have_an_account.dart';
import 'package:login/components/rounded_input_field.dart';
import 'package:login/components/rounded_password_field.dart';
import 'package:login/screens/Login/loginscreen.dart';
import 'package:login/screens/Signup/component/background.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: size.height * 0.05,
            ),
          Text("SIGNUP",
          style: TextStyle(fontWeight: FontWeight.bold),
          ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Image.asset("assets/icons/phone.png",

            height: size.height*0.21,
              
            ), SizedBox(
              height: size.height * 0.01,
            ),
            RoundedInputField(hintText: "Enter Your Name ", onChanged:(value) {} ),

            RoundedInputField(icon: Icons.alternate_email_sharp,hintText: "Enter Your Email ", onChanged:(value) {} ),
            RoundedInputField(icon: Icons.add_call,hintText: "Enter Your Phone Number ", onChanged:(value) {} ),

            RoundedPasswordField(onChanged: (value){}),
            RoundedPasswordField(hintText:"Confirm Password",onChanged: (value){}),

            RoundedButton(press: (){}, text: "Signup"),
            SizedBox(
              height: size.height * 0.01,
            ),
            AlreadyHaveAnAccountCheck(press: (){

              Navigator.push(context, MaterialPageRoute(builder: (context){return LoginScreen();}));
            }
              ,login:false
              ,),
            OrDivider()




        ]
        ,
        ),
      ),
    );
  }
}
class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


