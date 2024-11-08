import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(children: [
            Container(
              height: 395,
              width: 510,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/newsImage.png'))),
            ),
            IconButton(
              padding: EdgeInsets.only(left: 32, top: 40),
              onPressed: () {},
              icon: Image.asset(
                'assets/icons/backbutton.png',
                height: 40,
                width: 40,
              ),
            ),
          ]),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32, top: 32, right: 16),
                child: Image.asset(
                  'assets/images/avatar.png',
                  height: 40,
                  width: 40,
                ),
              ),
              Text(
                "\n\nSamuel Newton",
                style: GoogleFonts.poppins(fontSize: 14),
              ),
            ],
          ),
          SizedBox(
            height: 32,
          ),
          Container(
            height: 138,
            width: 500,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Technology",
                            style: GoogleFonts.poppins(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "To build responsibly, tech\nneeds to do more than just\nhire chief ethics officers",
                            style: GoogleFonts.poppins(
                                fontSize: 22, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "17 June, 2023 — 4:49 PM",
                            style: GoogleFonts.poppins(
                                fontSize: 12,
                                color: Colors.black.withOpacity(0.48)),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
            height: 32,
            indent: 32,
            endIndent: 30,
          ),
          Expanded(
            child: ListView(scrollDirection: Axis.vertical, children: [
              Container(
                margin: EdgeInsets.only(left: 32, right: 32, top: 1),
                height: 200,
                width: 500,
                child: Row(
                  children: [
                    Text(
                      "In the last couple of years, we’ve seen\nnew teams in tech companies emerge\n that focus on responsible innovation,\ndigital well-being, AI ethics or humane\nuse. Whatever their titles, these\nindividuals are given the task of \n“leading” ethics at their companies.",
                      style: GoogleFonts.poppins(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
