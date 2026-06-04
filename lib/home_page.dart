import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'login_view.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  String userName = "";

  @override
  void initState() {
    super.initState();
    loadUserName();
  }

  Future<void> loadUserName() async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      userName = prefs.getString('userName') ?? "";
    });
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setBool('isLoggedIn', false);
    await prefs.remove('userName');

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginView()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),

        actions: [
          IconButton(onPressed: logout, icon: const Icon(Icons.logout)),
        ],
      ),
      body: Column(
        children: [
          Image.asset('assets/images/hero2.webp', width: 2000, height: 250),

          const SizedBox(height: 20),

          Text(
            "Welcome $userName",
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
          ),

          // const Padding(

          //   padding: EdgeInsets.all(120.0),
          //   child: Text(
          //     ":)",

          //     style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          //   ),
          // ),
        ],
      ),
    );
  }
}
