import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
            
                Text(
                  "Welcome back! Please login to your account.",
                  style: TextStyle(fontSize: 16, color: const Color.fromARGB(255, 127, 113, 113)),
                ),
                TextField(decoration: InputDecoration(hintText: "Username")),
            
                TextField(decoration: InputDecoration(hintText: "Password")),
                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Forget Your Password?"),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: const Color.fromARGB(255, 194, 195, 195)),

                  child: Center(child: Text("Login", style: TextStyle(color: Colors.white),)),

                  height: 50,
                ),
              ),

              Expanded(
                child: Container(
                  decoration: BoxDecoration(color: const Color.fromARGB(255, 21, 38, 78)),
                  child: Center(child: Text("Signup", style: TextStyle(color: Colors.white),)),
                  height: 50,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
