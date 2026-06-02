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
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),

            Text(
              "Welcome back! Please login to your account.",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            TextField(decoration: InputDecoration(hintText: "Username")),

            TextField(decoration: InputDecoration(hintText: "Password")),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text("Forget Your Password?"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              children: [
                ElevatedButton(onPressed: () {}, child: Text("Login")),

                ElevatedButton(onPressed: () {}, child: Text("Sign Up")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
