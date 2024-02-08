import 'package:bloody/core/utils/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
   CustomTextField({super.key, required this.hint,this.icon,  this.obscureText=false, required this.controller,});
 final String hint;
 final bool obscureText;
 final IconData? icon;
 final TextEditingController controller;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
 var globalKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: globalKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Container(
          decoration: BoxDecoration(
                  color: kTextGreyColor.withOpacity(.17),
          borderRadius: BorderRadius.circular(12),
        
          ),
          child: TextFormField(
            controller: widget.controller,
            obscureText: widget.obscureText,
            decoration: InputDecoration(
              contentPadding:const EdgeInsets.symmetric(horizontal: 18,vertical: 20),
              hintText: widget.hint,
              suffixIcon: IconButton(onPressed: (){
                widget.obscureText!=widget.obscureText;
              }, icon: Icon(widget.icon)),
             enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15),borderSide: BorderSide(width: 0,color: Colors.black.withOpacity(.4))),
      
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide:const BorderSide(width: 2,color: kPrimaryColor),
              )
            ),
            cursorColor: Colors.black,
          ),
        ),
      ),
    );
  }
}