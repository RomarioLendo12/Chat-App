import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final Color colors;
  final VoidCallback navigator;
  final String functionality;

  RoundedButton(
      {required this.colors,
      required this.navigator,
      required this.functionality});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colors,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: navigator,
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            functionality,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
