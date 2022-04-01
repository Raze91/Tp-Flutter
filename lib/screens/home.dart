import 'package:flutter/material.dart';

import '../components/exercice_7.dart';
import '../components/list.dart';
import '../carousel/index.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  List<Widget> list = [
    CarouselImages(),
    const CustomList(),
    const Exercice7(),
  ];

  @override
  Widget build(BuildContext context) {
    // return const Scaffold(body: Exercice7());
    return Scaffold(
      body: list[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        onTap: (int i) {
          setState(() {
            index = i;
          });
        },
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.black,
        iconSize: 48,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: 'List'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'User'),
        ],
      ),
    );
  }
}
