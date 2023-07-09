import 'package:firebase/snack.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var levelController = TextEditingController();
  var insituteController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var confirmPasswordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var Size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Level",
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
                  controller: levelController,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          //2colum text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Insitute",
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
                  controller: insituteController,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          //3colum text
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

          SizedBox(
            height: 30,
          ),

          //4colum text.
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

          SizedBox(
            height: 30,
          ),




          
          //5colum text..

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "confirm Password",
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
                  controller: confirmPasswordController,
                  decoration: InputDecoration(border: OutlineInputBorder()),
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () {
              if (levelController.text.isEmpty) {
                showSnack(context, "Enter The Please Level");
              } else if (insituteController.text.isEmpty) {
                showSnack(context, "Enter The Please Insitute");
              } else if (emailController.text.isEmpty) {
                showSnack(context, "Enter The Please email");
              } else if (!emailController.text.contains("@")) {
                showSnack(context, "Please enter valid mail");
              } else if (passwordController.text.isEmpty) {
                showSnack(context, "Enter The Please Password");
              } else if (passwordController.text.length < 7) {
                showSnack(context, "please enter the 7 min chracter");
              } else if (confirmPasswordController.text !=
                  passwordController.text) {
                showSnack(context, " Please Confirm! Password not match");
              } else {
                // snack(context, "All Done");
              }
            },
            child: Container(
              height: 40,
              width: 50,
              color: Colors.amberAccent,
              child: Text("login"),
            ),
          ),
        ],
      ),
    );
  }
}
