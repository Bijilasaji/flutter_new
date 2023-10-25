// import 'package:estore/screens/home.dart';
// import 'package:estore/services/api_service.dart';
import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  bool isPasswordVisible = false;

  // final ApiService apiService = ApiService();
  Future<void> login() async {
    setState(() {
      isLoading = true;
    });
    final username = usernameController.text;
    final password = passwordController.text;

    // try {
    //   final response = await apiService.login(username, password);
    //   print('Login successful: $response');
    // } catch (e) {
    //   print('Login failed: $e');
    // }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login >>',
          style: TextStyle(
              color: Colors.blue,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Container(
            //     height: 100,
            //     width: 100,
            //     child: Image.asset('assets/images/logo.jpg')
            //     ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            isPasswordVisible = !isPasswordVisible;
                          });
                        },
                        icon: Icon(isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off))),
                obscureText: !isPasswordVisible,
                // obscureText: true,
              ),
            ),
            ElevatedButton(
              onPressed: login,
              child: Text('Login'),
            ),
            if (isLoading) CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
