import 'package:flutter/material.dart';

class RigsterView extends StatefulWidget {
  const RigsterView({super.key});

  @override
  State<RigsterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RigsterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "Welcome",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            
            children: [
              Image.asset(
                'assets/images/hero.jpg',
                width: 2000,
                height: 250,
              ),
        
              Column(
                children: [
                  
                  Text(
                    "Join us!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 28,
                    ),
                  ),
                  
                ],
                
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("We're so glad you're here. Let's get your account set up in just a few steps.",style: TextStyle(fontSize: 16),),
              ),
             
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Name", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              ),
              
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("So we know what to call you", style: TextStyle(fontStyle: FontStyle.italic),),
               ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                      decoration: InputDecoration(
                        hintText: "e.g. Alex Smith",
                      ),
                    ),
              ),
        
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Email Address", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("To keep your account secure and reachable", style: TextStyle(fontStyle: FontStyle.italic),),
               ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                      decoration: InputDecoration(
                        hintText: "yourname@example.com",
                      ),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Password", style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Text("A secret code to protect your information ", style: TextStyle(fontStyle: FontStyle.italic),),
               ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                      decoration: InputDecoration(
                        hintText: "Min. 8 characters",
                      ),
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
                      
                      "Create Account",
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
        ),
      ),
    );
  }
}