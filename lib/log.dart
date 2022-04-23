import 'package:flutter/material.dart';
import 'package:flutter_log/custom_text_field.dart';
import 'package:lottie/lottie.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff38c172),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Lottie.network(
                    'https://assets5.lottiefiles.com/packages/lf20_ah1zbzo1.json'),
              ),
              CustomText('Email', 'Email address', Icons.email,false),
              const SizedBox(height: 5),
              CustomText('Password', 'Password', Icons.lock,true,pass: const Icon(Icons.visibility),),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(right: 23),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Forget Password',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,fontFamily: 'Lobster'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              InkWell(
                onTap: () {},
                child: Container(
                    height: 60,
                    width: 395,
                    child: const Align(
                      alignment: Alignment.center,
                        child: Text(
                      'LOGIN',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,letterSpacing: 1),
                    )),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffCFEF78),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(4, 4),
                              spreadRadius: 2,
                              blurRadius: 4)
                        ])),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                   Text(
                    "Don't have an account?",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "SignUp",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
