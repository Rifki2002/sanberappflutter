import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/icons/menu.png',
                    height: 40,
                    width: 40,
                  ),
                  Spacer(),
                  Image.asset(
                    'assets/icons/search.png',
                    height: 40,
                    width: 40,
                  )
                ],
              ),
              Container(
                height: 354,
                width: 311,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Settings",
                          style: GoogleFonts.poppins(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/profile.png',
                          height: 56,
                          width: 56,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Profile Settings",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                            Text(
                              "Settings Regarding Your Profile",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(0.48)),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.black.withOpacity(0.48),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/newsicon.png',
                          height: 56,
                          width: 56,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "News Settings",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                            Text(
                              "Choose your favourite topics",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(0.48)),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.black.withOpacity(0.48),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/notification.png',
                          height: 56,
                          width: 56,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Notifications",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                            Text(
                              "When would you like to be notified",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(0.48)),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.black.withOpacity(0.48),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/subscription.png',
                          height: 56,
                          width: 56,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Subscriptions",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                            Text(
                              "Currently, you are in starter plan",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(0.48)),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.black.withOpacity(0.48),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 185,
                width: 311,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Other",
                          style: GoogleFonts.poppins(
                            fontSize: 26,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/bugreport.png',
                          height: 56,
                          width: 56,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Bug Report",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                            Text(
                              "Report bugs very easy",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(0.48)),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.black.withOpacity(0.48),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/icons/shareApp.png',
                          height: 56,
                          width: 56,
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Share The App",
                              style: GoogleFonts.poppins(fontSize: 14),
                            ),
                            Text(
                              "Share on social media networks",
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.black.withOpacity(0.48)),
                            ),
                          ],
                        ),
                        Spacer(),
                        Icon(
                          Icons.arrow_circle_right_outlined,
                          color: Colors.black.withOpacity(0.48),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
