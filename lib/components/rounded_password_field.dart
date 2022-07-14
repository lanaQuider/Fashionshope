import 'package:flutter/material.dart';
import 'package:login/components/text_field_container.dart';

import '../costant.dart';


class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String hintText;

  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
     this.hintText="Password"
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(

            hintText: hintText
            ,
            icon: Icon(
              Icons.lock,
              color: primarycolor,
            ),
            suffixIcon: Icon(
              Icons.visibility,
              color: primarycolor,
            ),

            border: InputBorder.none),
      ),
    );
  }
}
