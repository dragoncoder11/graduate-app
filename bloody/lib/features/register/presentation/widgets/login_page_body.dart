
import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/custom_button.dart';
import 'package:bloody/core/utils/custom_text_field.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:bloody/features/register/presentation/views/forget_password.dart';
import 'package:flutter/material.dart';

class LoginPageBody extends StatelessWidget {
  const LoginPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController=TextEditingController();
    var passwordController=TextEditingController();
     GlobalKey<FormState> globalKey=GlobalKey<FormState>();

    return  Form(
      key: globalKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
             children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text('Sign in',style: Styles.style24Bold,),
                ],
              ),
              const SizedBox(height: 40,),
               CustomTextField(hint: 'Email',controller: emailController,),
               CustomTextField(hint: 'Password',icon: Icons.visibility,controller: passwordController,obscureText: true,),
               const SizedBox(height: 20,),
               CustomButton(ontap: (){
                 if (globalKey.currentState!.validate()) {
                   
                 }
               },title: 'Sign in',),
               GestureDetector(onTap: () {
                 Navigator.of(context).pushNamed(ForgetPassword.id);
               },child:  Text('Forgot password?',style: Styles.style14Bold.copyWith(color: kPrimaryColor),textAlign: TextAlign.center,)),
               const SizedBox(height: 10,),
               Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                 Text('Don’t have an account?   ',style: Styles.style14),
                 Text(' Sign Up',style: Styles.style14.copyWith(color: kPrimaryColor)),
           
               ],),
                  const SizedBox(height: 15,),
                 Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                 Container(decoration: BoxDecoration(
                   color: Colors.grey.withOpacity(.3),
                   borderRadius: BorderRadius.circular(12),
                 ),child: Image.asset('assets/google.png',height: 50,width: 50,)),
                 const SizedBox(width: 15,),
                  Container(decoration: BoxDecoration(
                   color: Colors.grey.withOpacity(.3),
                   borderRadius: BorderRadius.circular(12),
                 ),child: Image.asset('assets/apple.png',height: 50,width: 50,)),
               ],)
           
           
             ],
           ),
      ),
    );
  }
}