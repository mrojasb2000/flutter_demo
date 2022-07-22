// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_demo/components/emoticon_face.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            )
          ],
        ),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    // greeting row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Hi Jared!
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Hi Jared!",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              "23 Jan 2022",
                              style: TextStyle(color: Colors.blue[200]),
                            ),
                          ],
                        ),

                        // Notification
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.all(16),
                            child: const Icon(Icons.notifications,
                                color: Colors.white)),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // search bar
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: Row(children: [
                        const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          'Search',
                          style: TextStyle(color: Colors.white),
                        ),
                      ]),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // how do you feel?
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("How do you feel",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            )),
                        const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    // 4 different faces
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // bad
                        Column(
                          children: [
                            const EmiticonFace(
                              emoticonFace: '😡',
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Bad',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        // fine
                        Column(
                          children: [
                            const EmiticonFace(
                              emoticonFace: '😀',
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Fine',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        // well
                        Column(
                          children: [
                            const EmiticonFace(
                              emoticonFace: '😃',
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Well',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        // excellent
                        Column(
                          children: [
                            const EmiticonFace(
                              emoticonFace: '🤩',
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'Excellent',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // White block
              Expanded(
                child: Container(
                  color: Colors.grey[100],
                  child: Center(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text('Excersices'),
                            Icon(Icons.more_horiz),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
