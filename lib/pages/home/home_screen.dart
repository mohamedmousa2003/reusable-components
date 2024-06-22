import 'package:flutter/material.dart';

import '../shared/components/components.dart';
import '../shared/components/custom_text_field.dart';

class HomeScreen extends StatelessWidget {
  static String routeName ="home";
   HomeScreen({super.key});
  var emailCController= TextEditingController() ;
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("reusable components"),
        backgroundColor: Colors.green,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              defaultButton(title: "login", onTap: (){},),
              10.height, // as to create extension --> Sizebox بدل ما اكتب كل شوية
              defaultButton(title: "login", onTap:  (){}, isUpperCase: false,),
              10.height, // as to create extension --> Sizebox بدل ما اكتب كل شوية
              CustomTextField(
                onValidate: (text){
                  if (text == null || text.trim().isEmpty) {
                  return "please enter your Name";
                  }
                  return null;
                },
                controller: emailCController,
                label: "email",

                
              ),
              10.height, // as to create extension --> Sizebox بدل ما اكتب كل شوية
              defaultButton(title: "valid", onTap: (){
                 if (formKey.currentState?.validate() == true) {}
              },),
            ],
          ),
        ),
      ),
    );
  }
}