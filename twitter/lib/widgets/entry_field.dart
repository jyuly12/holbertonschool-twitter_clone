import 'package:flutter/material.dart';

class CustomEntryField extends StatelessWidget{

  final String hint;
  final TextEditingController controller;
  final bool isPassword;

  const CustomEntryField({
    Key? key, 
    required this.controller, 
    required this.hint,
    this.isPassword = false,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
       margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20),
       child: Center(
        child: TextField(
          controller: controller,
          obscureText: isPassword, // only obscure text when password is true
          decoration: InputDecoration(
            contentPadding: EdgeInsets.all(20.0),
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30)
            ),
        
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              width: 2.0,
              color: Colors.blue,
          ),),),),),);
  }
}