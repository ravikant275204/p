import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled6/profile.dart';

import 'homescreen.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),

    Container(
      child: Center(
          child: Text(
            "2",
            style: TextStyle(color: Colors.black),
          )),
    ), //
    Container(
      child: Center(
          child: Text(
            "3",
            style: TextStyle(color: Colors.black),
          )),
    ), //
    Container(
      child: Center(
          child: Text(
            "4",
            style: TextStyle(color: Colors.black),
          )),
    ),
    ProfileView()

  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Color.fromARGB(255, 241, 245, 247),
        // appBar: _buildAppBar(),
        body: _screens[_currentIndex],

        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Container(
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.transparent,
              boxShadow: [
                BoxShadow(
                    blurRadius: 4,
                    color: Colors.blue.withOpacity(0.5),
                    offset: Offset(-5, 5)),
                BoxShadow(
                    blurRadius: 4,
                    color: Colors.blue.withOpacity(0.5),
                    offset: Offset(5, 5))
              ]),
          child: FloatingActionButton(
            elevation: 5, // Add elevation for shadow
            backgroundColor: Colors.blue,
            focusColor: const Color.fromARGB(255, 35, 130, 207),
            hoverColor: Colors.red,
            splashColor: Colors.amber,
            foregroundColor: Colors.red,
            shape: CircleBorder(), // Set the shape to circular
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              setState(() {
                _currentIndex = 2;
              });
            },
          ),
        ),
        bottomNavigationBar: ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
            child: BottomAppBar(
              notchMargin: 15,
              shape: CircularNotchedRectangle(),
              elevation: 5,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.insert_drive_file_outlined, size: 30),
                    onPressed: () {
                      setState(() {
                        _currentIndex = 0;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.directions_walk, size: 30),
                    onPressed: () {
                      setState(() {
                        _currentIndex = 1;
                      });
                    },
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  IconButton(
                    icon: Icon(Icons.apple_rounded, size: 30),
                    onPressed: () {
                      setState(() {
                        _currentIndex = 3;
                      });
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.person_outline, size: 30),
                    onPressed: () {
                      setState(() {
                        _currentIndex = 4;
                      });
                    },
                  ),
                ],
              ),
            ),
        ),
     );
   }
}