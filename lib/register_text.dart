import 'package:flutter/material.dart';

class RegisterText extends StatelessWidget {
  final String normalText;
  final String boldText;
  final Function() onTextTap;

  const RegisterText({
    Key? key,
    required this.normalText,
    required this.boldText,
    required this.onTextTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(normalText),
        InkWell(
          onTap: onTextTap,
          child: Text(
            ' $boldText',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Colors.purple,
            ),
          ),
        ),
      ],
    );
  }
}
