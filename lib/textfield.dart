import 'package:flutter/material.dart';

class textfield extends StatelessWidget {

  const textfield({super.key,});

  @override
  Widget build(BuildContext context) {
    return const  Padding(
        padding: EdgeInsets.symmetric(horizontal: 25),
        child: TextField(
          obscureText: false,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "",

          ),
        ),
    );
  }
}