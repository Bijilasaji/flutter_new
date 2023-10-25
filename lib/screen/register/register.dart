import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
            padding: EdgeInsets.only(top: 5),
            child:
                IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios))
            // child: Icon(Icons.arrow_back_ios),
            ),
        title: const Row(
          children: [
            Padding(padding: EdgeInsets.only(right: 60)),
            Text("Register"),
            Padding(
              padding: EdgeInsets.only(top: 5, right: 130),
            ),
            Icon(Icons.search),
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 50),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(55),
                    child: Image.asset(
                      'assets/images/profile.jpg',
                      height: 150,
                      width: 150,
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
