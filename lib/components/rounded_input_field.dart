import 'package:flutter/material.dart';
import 'package:login/components/text_field_container.dart';

import '../costant.dart';
class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon ;
  final ValueChanged<String> onChanged;
  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon=Icons.person,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(child: TextField(
      decoration: InputDecoration(hintText: hintText,
          border: InputBorder.none,
          icon: Icon(icon,color: primarycolor,)

      ),
    ),);
  }
}

