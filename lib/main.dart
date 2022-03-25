import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Logowanie do Apki',
    home: FirstRoute(
      backgroundColor: Colors.white,
    ),
  ));
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({Key? key, required Color backgroundColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var style;
    return Scaffold(
      body: Column(
        children: [
          Center(
              child: Padding(
                padding: const EdgeInsets.all(90.0),
                child: new Image.asset('images/home.jpg', width: 300,),
              )),
          Padding(padding: EdgeInsets.only(top: 20.0),),
          Text('Team work all',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26)),
          Padding(
            padding: const EdgeInsets.all(60.0),
            child: Text(
                'Lorem i nie lorem, ipsum lorem. Mój tekścik o aplikacji \nNowa linia tekstu o znakomitej apce \nTrzecia linia tekstu o tejże apce'),
          ),
          Center(
            child: SizedBox(height: 50, width: 300,
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
          ),
        ],
      ),
    );
  }
}

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Center(
              child: Padding(
                padding: EdgeInsets.all(90.0),
                child: TextField (obscureText: true, decoration: InputDecoration(border:OutlineInputBorder(),labelText: 'E-mail, phone, username' ),),
              )),
          Padding(padding: EdgeInsets.only(top: 20.0),),
          Text('Lets Sign you in', textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26, )),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
                'Welcome Back, \nYou have been missed', textAlign: TextAlign.left,),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: SizedBox(height: 50, width: 300,
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
          ),
        ],
      ),
    );


  }
}