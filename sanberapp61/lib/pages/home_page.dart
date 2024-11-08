import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "NewsApp",
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          padding: EdgeInsets.only(left: 20),
          icon: Image.asset(
            'assets/icons/menu.png',
          ),
          onPressed: () {},
        ),
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
          ),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 32),
                      height: 311,
                      width: 311,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/robot.png',
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(24),
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Technology",
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Spacer(),
                                        Text(
                                          "3 min ago",
                                          style: GoogleFonts.poppins(
                                              fontSize: 8, color: Colors.white),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 131),
                                    Row(
                                      children: [
                                        Text(
                                          "Microsoft launches a\ndeepfake detector tool\nahead of US election",
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/icons/chat.png',
                                          height: 24,
                                          width: 24,
                                        ),
                                        SizedBox(
                                          width: 24,
                                        ),
                                        Image.asset(
                                          'assets/icons/bookmark.png',
                                          height: 23.95,
                                          width: 17,
                                        ),
                                        Spacer(),
                                        Image.asset(
                                          'assets/icons/share.png',
                                          height: 19.9,
                                          width: 24,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 32),
                      height: 311,
                      width: 311,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/microsoft.png',
                            ),
                            fit: BoxFit.fill),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(24),
                            child: Stack(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "Technology",
                                          style: GoogleFonts.poppins(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                        Spacer(),
                                        Text(
                                          "3 min ago",
                                          style: GoogleFonts.poppins(
                                              fontSize: 8, color: Colors.white),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 131),
                                    Row(
                                      children: [
                                        Text(
                                          "Microsoft launches a\ndeepfake detector tool\nahead of US election",
                                          style: GoogleFonts.poppins(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(
                                          'assets/icons/chat.png',
                                          height: 24,
                                          width: 24,
                                        ),
                                        SizedBox(
                                          width: 24,
                                        ),
                                        Image.asset(
                                          'assets/icons/bookmark.png',
                                          height: 23.95,
                                          width: 17,
                                        ),
                                        Spacer(),
                                        Image.asset(
                                          'assets/icons/share.png',
                                          height: 19.9,
                                          width: 24,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Expanded(
            child: ListView(scrollDirection: Axis.vertical, children: [
              Container(
                height: 500,
                width: 311,
                margin: EdgeInsets.only(left: 32, right: 32),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Latest News",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              color: Colors.black.withOpacity(0.48),
                            )),
                        SizedBox(
                          height: 40,
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.black.withOpacity(0.40),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/news1.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Technology",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.48)),
                              ),
                              Text(
                                "Insurtech startup\nPasarPolis gets \$54\nmillion — Series B",
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/news2.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          width: 24,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Technology",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.48)),
                              ),
                              Text(
                                "The IPO parade\ncontinues as Wish\nfiles, Bumble targets",
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 23,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/news3.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          width: 14,
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Technology",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.48)),
                              ),
                              Text(
                                "Hypatos gets\n\$11.8M for a deep\nlearning approach",
                                style: GoogleFonts.poppins(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}

//Maap mas saya mampunya segini dulu belum sempet ngejar deadline
