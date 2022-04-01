import 'package:flutter/material.dart';
import 'package:testproject/action_text.dart';
import 'package:testproject/register.dart';
import 'package:url_launcher/url_launcher.dart';
import 'action_text.dart';

class Login extends StatelessWidget {
  const Login({Key? key, required Color backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildImage(context),
          SizedBox(height: 10),
          Center(
            child: Text(
              'Welcome to Saifty',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 10),
          Center(
            child: Text('Keep your data safe!'),
          ),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-mail',
                  hintText: 'Enter your E-mail'),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 80.0),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Password'),
            ),
          ),
          SizedBox(
            height: 12,
          ),
          MaterialButton(
            height: 55.0,
            minWidth: 350.0,
            color: Colors.deepPurpleAccent,
            textColor: Colors.white,
            onPressed: () {Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Register(
                  backgroundColor: Colors.white,
                ),
              ),
            );},
            child: Text('Login'),
          ),
          SizedBox(height: 5),
          Center(
            child: Text('Forget password?'),
          ),
          Spacer(),
          ActionText(
            normalText: 'Don\'t have an account?',
            boldText: 'Register!',
            onTextTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Register(
                    backgroundColor: Colors.deepPurpleAccent,
                  ),
                ),
              );
            },
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

Widget buildImage(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(80, 40, 80, 20),
    child: new Image.asset(
      'images/lock.png',
      width: MediaQuery.of(context).size.width,
      fit: BoxFit.fill,
    ),
  );
}
