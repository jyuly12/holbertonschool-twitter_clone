import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget{

  final String label;
  Function onPressed;

  CustomFlatButton({
    Key ? key,
    required this.label,
    required this.onPressed(),
    }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: TextButton(
        onPressed: () {
          onPressed();
        },
        child: Text(
          label,
          style: TextStyle(
            fontFamily: 'Raleway',
            fontSize: 30,
            height: 1,            
          ),
        ),),);
  }
}