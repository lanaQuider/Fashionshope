import 'package:flutter/material.dart';
import 'package:login/components/text_field_container.dart';

import '../costant.dart';


class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        obscureText: true,
        decoration: InputDecoration(

            hintText: "Password"
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
