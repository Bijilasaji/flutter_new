import 'package:ecommerce/screen/cart.dart';
import 'package:ecommerce/screen/home.dart';
import 'package:ecommerce/screen/category.dart';
import 'package:ecommerce/screen/profile.dart';
import 'package:flutter/material.dart';

class Common extends StatefulWidget {
  const Common({super.key});

  @override
  State<Common> createState() => _CommonState();
}

int currentIndex = 0;

final List<Widget> tabs = [
  HomeScreen(),
  Category(),
  CartScreen(),
  ProfileScreen(),
];

class _CommonState extends State<Common> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(left: 100),
          child: Text(
            "Products",
            style: TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 184, 223, 185),
      ),
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.black,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Category"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
