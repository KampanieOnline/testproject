import 'package:flutter/material.dart';
import 'package:testproject/login.dart';
import 'package:url_launcher/url_launcher.dart';
import 'action_text.dart';

class Register extends StatelessWidget {
  const Register({Key? key, required Color backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      buildImage(context),
      SizedBox(height: 10),
      Center(
        child: Text(
          'Register on Saifty',
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
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Email',
              hintText: 'Email'),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Login',
              hintText: 'Login'),
        ),
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
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80.0),
        child: TextFormField(
          decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Confirm password',
              hintText: 'Confirm password'),
        ),
      ),
      SizedBox(height: 20),
      MaterialButton(
        height: 55.0,
        minWidth: 350.0,
        color: Colors.deepPurpleAccent,
        textColor: Colors.white,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Login(
                      backgroundColor: Colors.white,
                    )),
          );
        },
        child: Text('Register/Login', style: TextStyle(color: Colors.white)),
      ),
      Spacer(),
      ActionText(
        normalText: 'Dont have an account?',
        boldText: 'Register!',
        onTextTap: () => Navigator.pop(context),
      ),
      SizedBox(height: 20),
    ]));
  }

  Future lunchLogin() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
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

  lunchFlutterWebsite() {}
}
