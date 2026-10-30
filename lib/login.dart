import 'package:flutter/material.dart';
import 'landing.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login(){
    String username = _usernameController.text;
    String password = _passwordController.text;

    Navigator.push(context, MaterialPageRoute(
      builder: (context) => LandingPage(
        username: username,
        password: password,
      ) ));
  }

  void _register(){
    Navigator.push(context, MaterialPageRoute(
      builder: (context) => Register() ));
  }

  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      minimumSize: const Size.fromHeight(50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      textStyle: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold
      )
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Aranda Task 6'),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              Icon(
                size: 267,
                Icons.search
              ),

              SizedBox(height: 200,),

              TextField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username nyo fo',
                  hintText: 'Enter your username',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  )
                ),
              ),

              SizedBox(height: 20,),

              TextField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password nyo fo',
                  hintText: 'Enter your Password',
                  prefixIcon: Icon(Icons.lock),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))
                  )
                ),
              ),

              SizedBox(height: 20,),

              ElevatedButton(
                onPressed: _login,

                style: buttonStyle.copyWith(
                  backgroundColor: WidgetStateProperty.all(Colors.blue),
                  foregroundColor: WidgetStateProperty.all(Colors.white),
                ),
                child: Text('Log in'),

              ),

              SizedBox(height: 20,),

              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Register()),
                ),
                style: buttonStyle.copyWith(
                  backgroundColor: WidgetStateProperty.all(Colors.white),
                  foregroundColor: WidgetStateProperty.all(Colors.black),
                ),
                child: Text('Sign up'),

              )
            ],
          ),
        ),
      ),
    );
  }
}