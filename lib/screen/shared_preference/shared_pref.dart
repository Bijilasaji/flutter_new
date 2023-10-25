// Import necessary libraries
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart'; // For storing user data locally

class sharedpref extends StatefulWidget {
  const sharedpref({super.key});

  @override
  State<sharedpref> createState() => _sharedprefState();
}

class _sharedprefState extends State<sharedpref> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _favNumberController = TextEditingController();

  String username = "";
  String name = "";
  bool likesCoffee = false;
  int favouritenumber = 0;

  @override
  void initState() {
    loadUserData();
    super.initState();
  }

  Future<void> loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _usernameController.text = prefs.getString('User Name').toString();
      _emailController.text = prefs.getString('Email').toString();
      likesCoffee = prefs.getBool('Likes Coffee') ?? false;
      _favNumberController.text = prefs.getInt('Favourite Number').toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Register Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(label: Text("User Name")),
            ),
            TextField(
              controller: _emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextField(
              controller: _favNumberController,
              decoration: const InputDecoration(labelText: 'Favourite Number'),
            ),
            Row(
              children: [
                const Text("Likes Coffee ?"),
                Switch(
                  value: likesCoffee,
                  onChanged: ((value) {
                    setState(() {
                      likesCoffee = !likesCoffee;
                    });
                  }),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                saveUserData();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.green[400],
                    content: const Text('User data saved'),
                  ),
                );
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> saveUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('User Name', _usernameController.text);
    await prefs.setString('Email', _emailController.text);
    await prefs.setBool('Likes Coffee', likesCoffee);
    await prefs.setInt(
        'Favourite Number', int.parse(_favNumberController.text));
  }
}
