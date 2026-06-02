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
      appBar: AppBar(
        title: Align(
          alignment: AlignmentGeometry.centerLeft,
          child: Text(
            'Welcome',
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/blueIcon.png',
                  width: 80,
                  height: 80,
                ),

                SizedBox(height: 20),

                Text(
                  "Welcome Back!",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),

                Text(
                  "We're so glad to see you again. Let's get you back on track.",
                  style: TextStyle(
                    fontSize: 16,
                    color: const Color.fromARGB(255, 127, 113, 113),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Email Address",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),

                TextField(
                  decoration: InputDecoration(
                    hintText: "e.g. hello@example.com",
                  ),
                ),

                Text(
                  "Use the email you registerd with.",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(width: 90),
                    TextButton(
                      onPressed: () {},
                      child: Text("Forget Your Password?"),
                    ),
                  ],
                ),

                TextField(
                  decoration: InputDecoration(hintText: "Enter your password"),
                ),
                Text(
                  "Passwords are case-sensitive.",
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //Center(

                //),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 36, 97, 163),
                  ),

                  child: Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),

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
