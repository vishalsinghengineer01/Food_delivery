import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';

import 'hero_animation.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Hello',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
            ),
            Text(
              'Alexander',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      enabledBorder:
                          OutlineInputBorder(borderSide: BorderSide.none),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(CupertinoIcons.up_arrow),
                SizedBox(
                  width: 15,
                ),
                Icon(CupertinoIcons.arrow_up_bin_fill),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
                height: 200,
                width: 500,// Set the desired height for the PageView
                child: PageView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: 10, // Example number of pages
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8),
                        child: Stack(
                          children: [Container(
                            width: 500,
                            height: 300,
                          //  color: Colors.red,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25),
                                image: DecorationImage(
                                  image: NetworkImage(
                                      'https://img.freepik.com/free-photo/grilled-gourmet-burger-with-cheese-tomato-onion-french-fries-generated-by-artificial-intelligence_25030-63181.jpg'),
                                  fit: BoxFit.cover,
                                )),
                          ),
                      ]
                        ),
                      );
                    })),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton.icon(
                  icon: Icon(
                    Icons.timelapse_rounded,
                    color: Colors.green,
                    size: 8.0,
                  ),
                  label: Text(
                    'Delivery Now',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 23,
                        color: Colors.green),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[100],
                      padding: EdgeInsets.all(10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: ElevatedButton.icon(
                    icon: Icon(
                      Icons.fire_truck,
                      color: Colors.white,
                      size: 8.0,
                    ),
                    label: Text(
                      'Pick A Date',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23,
                          color: Colors.white),
                    ),
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[500],
                        padding: EdgeInsets.all(10),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
                  ),
                )
              ],
            ),

            SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => HeroAnimation(),
    ),
    );
                },
                child:
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Stack(children: [
                        Hero(
                          tag: 'imageTag$index',
                          child: Container(
                            height: 200,
                            width: 400,
                            // color: Colors.green,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                image: NetworkImage(
                                  'https://img.freepik.com/free-photo/grilled-gourmet-burger-with-cheese-tomato-onion-french-fries-generated-by-artificial-intelligence_25030-63181.jpg',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 170, // Adjust position as needed
                          left: 330,
                          child: CircleAvatar(
                            radius: 20,
                            backgroundImage: NetworkImage(
                              'https://tinypng.com/images/social/website.jpg',
                            ),
                          ),
                        ),
                        Positioned(
                            top: 10, // Adjust position as needed
                            left: 350,
                            child: Icon(
                              Icons.favorite,
                              color: Colors.white,
                            )),
                        Positioned(
                            top: 90, // Adjust position as needed
                            left: 20,
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 30,
                            )),
                        Positioned(
                            top: 90, // Adjust position as needed
                            left: 350,
                            child: Icon(
                              Icons.arrow_forward_outlined,
                              color: Colors.white,
                              size: 30,
                            )),
                      ]),
                      SizedBox(
                          height:
                              8), // Add vertical space between image and text
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: Text(
                              ' BURGER KING WITH PIZZA ',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Row(
                          children: [
                            Icon(Icons.fire_truck),
                            Text('   delivery in just 25 min ')
                          ],
                        ),
                      ),
                    ],
                  ),
                ));
              },
            ),
          ])),
    );
  }
}
