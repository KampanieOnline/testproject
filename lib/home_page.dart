import 'package:flutter/material.dart';
import 'package:testproject/sign_in.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required Color backgroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          buildImage(context),
          SizedBox(height:20.0),
          Text('Team work all',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Text(
                'Lorem i nie lorem, ipsum lorem. Mój tekścik aplikacji \nNowa linia tekstu o znakomitej apce \nTrzecia linia tekstu o tejże apce'),
          ),
          buildSignIn(context),
        ],
      ),
    );
  }

  Center buildSignIn(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 50,
        width: 300,
        child: ElevatedButton(
          style: ButtonStyle(),
          child: const Text('Sign In'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SignIn()),
            );
          },
        ),
      ),
    );
  }

  Widget buildImage(BuildContext context ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: new Image.asset(
        'images/home.jpg',
        width: MediaQuery.of(context).size.width, fit: BoxFit.fill,
      ),
    );
  }
}
