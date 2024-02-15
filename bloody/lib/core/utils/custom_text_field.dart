import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final IconData? icon;
  final String hint;
  final TextEditingController controller;
  final bool obscureText;

  const CustomTextField({
    Key? key,
     this.icon,
    required this.hint,
    required this.controller,  this.obscureText=false,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: TextFormField(
        cursorColor: kTextGreyColor,
        controller: controller,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter $hint';
          }
          return null;
        },
        style: Styles.style14,
        decoration: InputDecoration(
          suffixIcon: Icon(icon, color: Colors.grey),
          hintText: hint,
          hintStyle: Styles.style11.copyWith(
            color: Colors.grey,
            fontSize: 14,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide:const BorderSide(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide:const BorderSide(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
          border:  OutlineInputBorder(
            borderSide:const BorderSide(color: Colors.grey, width: 1.5),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        
      ),
    );
  }
}