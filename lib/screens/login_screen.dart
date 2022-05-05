import 'package:doctor_app/helper/fade_animation.dart';
import 'package:doctor_app/helper/helper.dart';
import 'package:doctor_app/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/getwidget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar:  AppBar(
          backgroundColor: Colors.white,
          title: const Text(
            "Login",
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.black),
          ),
          elevation: 0,
          actions: [
            IconButton(
                onPressed: () {
                },
                icon: const Icon(Icons.notifications,
                    color: Colors.black)),
            PopupMenuButton<String>(
              icon: const Icon(Icons.more_vert,
                  color:  Colors.black),
              onSelected: (value) {},
              itemBuilder: (BuildContext context) {
                return {'Logout', 'Settings'}.map((String choice) {
                  return PopupMenuItem<String>(
                    value: choice,
                    child: Text(choice),
                  );
                }).toList();
              },
            ),
          ],
        ),
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: size.width / 2.2, maxHeight: 140),
                    child: Container(
                      decoration: const BoxDecoration(
                        image:
                        DecorationImage(image: AssetImage('assets/logo.png')),
                      ),
                    ),
                  ),
                  const FadeAnimation(
                      1,
                      Text(
                        "Login",
                        style:
                        TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  const FadeAnimation(
                      1.2,
                      Text(
                        "Login to your account",
                        style: TextStyle(fontSize: 15,),
                      )),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: <Widget>[
                    FadeAnimation(1.2, makeInput(label: "Email")),
                    FadeAnimation(
                        1.3, makeInput(label: "Password", obscureText: true)),
                  ],
                ),
              ),
              FadeAnimation(
                  1.4,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: GFButton(
                      onPressed: () {},
                      text: "Login",
                      color: secondaryColor,
                      textStyle: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                      icon: const Icon(FontAwesomeIcons.unlock, size: 12),
                      shape: GFButtonShape.standard,
                      blockButton: true,
                    ),
                  )),

              const SizedBox(
                height: 10,
              ),
              FadeAnimation(
                  1.5,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text("Don't have an account?"),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegisterScreen()));
                        },
                        child: const Text(
                          "  Registration",
                          style: TextStyle(
                              fontWeight: FontWeight.w600, fontSize: 18),
                        ),
                      ),
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }

  Widget makeInput({label, obscureText = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: const TextStyle(
              fontSize: 14, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
            border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey)),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
