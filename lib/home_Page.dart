import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prayiceper/search.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: EdgeInsets.all(8.0), // Add padding to the leading widget
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg'),
          ),
        ),
        title: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address',
                  style: TextStyle(fontSize: 15,
                    shadows: [
                    Shadow(
                    color: Colors.white54,
                    offset: Offset(2, 2), // Adjust the offset as needed
                    blurRadius: 10,
                  ),
               ] ),),
                SizedBox(
                    height: 4), // Add vertical spacing between Text widgets
                Row(
                  children: [
                    Icon(CupertinoIcons.location_solid),
                    SizedBox(
                        width:
                            4), // Add horizontal spacing between Icon and Text
                    Text(
                      'New York City',
                      style: TextStyle(fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 8.0), // Add padding to the action icon
            child: Icon(CupertinoIcons.cart),
          ),
        ],
      ),
      body: Search(),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white12,
        buttonBackgroundColor: Colors.green,
        animationDuration: Duration(milliseconds: 400),
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        animationCurve: Curves.bounceInOut,
        index: _currentIndex, // Set the initial index
        items: [
          CurvedNavigationBarItem(
            child: Icon(Icons.home_outlined, color: _currentIndex == 0 ? Colors.white : Colors.black),
            label: 'Home',

          ),
          CurvedNavigationBarItem(
            child:  Icon(Icons.featured_play_list, color: _currentIndex == 1 ? Colors.white : Colors.black),
            label: 'Featured',

          ),
          CurvedNavigationBarItem(
            child:  Icon(Icons.offline_bolt, color: _currentIndex == 2 ? Colors.white : Colors.black),
            label: 'Orders',

          ),
          CurvedNavigationBarItem(
            child:  Icon(Icons.settings, color: _currentIndex == 3 ? Colors.white : Colors.black),
            label: 'Setting',

          ),
        ],
      ),


    );

  }
}
