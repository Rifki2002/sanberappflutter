import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffffffff),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  height: 330,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage('assets/images/papers.png'),
                  )),
                ),
                const SizedBox(
                  height: 32,
                ),
                Text(
                  "Yuk, Membaca Bersama\nSanber News",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.arimo(
                      fontSize: 21, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 21,
                ),
                Text(
                  "Berita Terpercaya, Di Ujung Jari Anda",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Spacer(),
                SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.only(right: 20, left: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Masuk",
                        style: GoogleFonts.arimo(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffffffff)),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff3498DB),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8))),
                    ),
                  ),
                ),
                SizedBox(
                  height: 21,
                ),
                SizedBox(
                  height: 52,
                  width: double.infinity,
                  child: Container(
                    margin: EdgeInsets.only(right: 20, left: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Mendaftar",
                        style: GoogleFonts.arimo(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff3498DB)),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffffffff),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(color: Color(0xff3498DB), width: 2),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ));
  }
}
