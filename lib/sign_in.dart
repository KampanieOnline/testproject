

import 'package:flutter/material.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildDetails(),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
          ),
          Text(
            'Lets Sign you in',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
            ),
          ),
          buildWelcomeBack(),
          buildButton(context),
          buildOrLine(),
          Row(children:[
            Container()
          ])
        ],
      ),
    );
  }

  Padding buildOrLine() {
    return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Row(
            children: [
              Expanded(child: Container(color: Colors.grey, height: 2)),
              SizedBox(width:10),
              Text('or', style: TextStyle(fontWeight: FontWeight.w700),),
              SizedBox(width:10),
              Expanded(child: Container(color: Colors.grey, height: 2)),
            ],
          ),
        );
  }

  Padding buildWelcomeBack() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        'Welcome Back, \nYou have been missed',
        textAlign: TextAlign.left,
      ),
    );
  }

  Center buildButton(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: SizedBox(
          height: 50,
          width: 300,
          child: ElevatedButton(
            style: ButtonStyle(),
            child: const Text('Sign In/ Back'),
            onPressed: () {
              Navigator.pop(
                context,
                MaterialPageRoute(builder: (context) => const SignIn()),
              );
            },
          ),
        ),
      ),
    );
  }

  Center buildDetails() {
    return const Center(
        child: Padding(
          padding: EdgeInsets.all(90.0),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(), labelText: 'E-mail, phone, username'),
          ),
        ));
  }
}