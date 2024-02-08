
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
    var idController=TextEditingController();
    return  Column(
      children: [
       const SizedBox(height: 220,child: Padding(
         padding: EdgeInsets.only(top: 180),
         child: Text('Sign in',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500)),
       )),
        Expanded(child: Container(decoration: const BoxDecoration(color: Colors.white,
        borderRadius:BorderRadius.only(topLeft: Radius.circular(100),topRight: Radius.circular(100)) ),child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:16.0),
          child: ListView(
            children: [
             const SizedBox(height: 50,),
              CustomTextField(hint: 'Email',controller: emailController,),
              CustomTextField(hint: 'Password',icon: Icons.visibility,controller: passwordController,obscureText: true,),
              CustomTextField(hint: 'ID Number',controller: idController,),
              CustomButton(ontap: (){
                
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
        ),))
      ],
    );
  }
}