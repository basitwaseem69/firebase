import 'package:firebase/loginScreen.dart';
import 'package:firebase/snack.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
   var emailController = TextEditingController();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "password",
              style: TextStyle(
                  color: Colors.black12,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: Size.width * .50,
              //wrap kiya Textfeild container mai...
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Email",
              style: TextStyle(
                  color: Colors.black12,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: Size.width * .50,
              //wrap kiya Textfeild container mai...
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
            ),
          ],
        ),
        InkWell(onTap: ()async{
          if(emailController.text.isEmpty){
            showSnack(context, "Please Enter Email");
          }
          else if(passwordController.text.isEmpty){
            showSnack(context, "Please enter Password");
          }else{
            try {
              await FirebaseAuth.instance.createUserWithEmailAndPassword(email: emailController.text, password: passwordController.text);

              showSnack(context, "Account Created");
            } catch (e) {
              showSnack(context, e.toString());
            }
         Navigator.push(context, MaterialPageRoute(builder:((context) => LoginScreen()))); };
        },
          child: Text(
            "SignUp",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
        ),
      ],
    ),
    );
  }
}