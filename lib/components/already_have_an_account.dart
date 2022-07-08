import 'package:flutter/material.dart';

import '../costant.dart';
class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final VoidCallback press;

  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.login=true,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login? "Don't have an account ?": " Already Have An Account ",
          style: TextStyle(color: primarycolor),
        ),
        GestureDetector(
          onTap: press ,
          child: Text(
            login? "Sign Up":" Sign In",
            style:
            TextStyle(color: primarycolor, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
