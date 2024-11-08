import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> newsArticles = [
    "News Article 1",
    "News Article 2",
  ];
  final List<String> items = [
    "Item 1",
    "Item 2",
    "Item 3",
  ];
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenheight = MediaQuery.of(context).size.height;
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
          Container(
            height: 311,
            width: screenWidth,
            child: PageView.builder(
              controller: PageController(
                viewportFraction: 0.85,
              ),
              itemCount: newsArticles.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/robot.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Stack(
                        children: [
                          Positioned(
                            top: 20,
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Technology",
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                              right: 20,
                              top: 20,
                              child: Text(
                                '3 mins ago',
                                style: GoogleFonts.poppins(
                                    fontSize: 8, color: Colors.white),
                              )),
                          Positioned(
                            bottom: 20,
                            left: 20,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Microsoft launches a\ndeepfake detector tool\nahead of US election",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Row(
                                  children: [
                                    IconButton(
                                      icon: Image.asset(
                                        'assets/icons/chat.png',
                                        height: 24,
                                        width: 24,
                                      ),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      icon: Image.asset(
                                        'assets/icons/bookmark.png',
                                        height: 24,
                                        width: 24,
                                      ),
                                      onPressed: () {},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 10,
                            right: 10,
                            child: IconButton(
                              icon: Image.asset(
                                'assets/icons/share.png',
                                height: 24,
                                width: 24,
                              ),
                              onPressed: () {},
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Container(
              margin: EdgeInsets.only(left: 50, right: 50),
              width: screenWidth,
              height: 200,
              child: Stack(
                children: [
                  Text(
                    "Latest News",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  Positioned(
                    top: -10,
                    right: 20,
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_circle_right_outlined,
                        color: Colors.grey.shade400,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//Maap mas saya mampunya segini dulu belum sempet ngejar deadline
