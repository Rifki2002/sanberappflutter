import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'search_screen.dart';
import 'setting_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static List<Widget> _pages = <Widget>[
    HomeScreen(),
    SearchScreen(),
    SettingScreen(
      onLogout: () {},
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Row(
                children: [
                  buildNewsContainer('assets/images/robot.png'),
                  buildNewsContainer('assets/images/microsoft.png'),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 30),
        Expanded(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              buildLatestNewsSection(context),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildNewsContainer(String imagePath) {
    return Container(
      margin: EdgeInsets.only(left: 32),
      height: 311,
      width: 311,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
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
                    SizedBox(height: 10),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/chat.png',
                          height: 24,
                          width: 24,
                        ),
                        SizedBox(width: 24),
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
    );
  }

  Widget buildLatestNewsSection(BuildContext context) {
    return Container(
      height: 500,
      width: 311,
      margin: EdgeInsets.only(left: 32, right: 32),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Latest News",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                  color: Colors.black.withOpacity(0.48),
                ),
              ),
              Spacer(),
              Icon(
                Icons.arrow_circle_right_outlined,
                color: Colors.black.withOpacity(0.40),
              ),
            ],
          ),
          SizedBox(height: 23),
          buildNewsRow('assets/images/news1.png',
              "Insurtech startup\nPasarPolis gets \$54\nmillion — Series B"),
          SizedBox(height: 23),
          buildNewsRow('assets/images/news2.png',
              "The IPO parade\ncontinues as Wish\nfiles, Bumble targets"),
          SizedBox(height: 23),
          buildNewsRow('assets/images/news3.png',
              "Hypatos gets\n\$11.8M for a deep\nlearning approach"),
        ],
      ),
    );
  }

  Widget buildNewsRow(String imagePath, String newsText) {
    return Row(
      children: [
        Image.asset(
          imagePath,
          height: 100,
          width: 100,
        ),
        SizedBox(width: 24),
        Column(
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
              newsText,
              style: GoogleFonts.poppins(
                  fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
