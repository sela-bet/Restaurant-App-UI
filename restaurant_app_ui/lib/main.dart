import 'package:flutter/material.dart';
import 'screens/media_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MaterialApp(home: Homepage()));

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          Container(
            height: 450,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/background/media_background.png"),
                    fit: BoxFit.cover)),
          ),
          Column(
            children: [
              SizedBox(
                height: 80,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                          radius: 25,
                          backgroundColor: Colors.grey,
                          child: Icon(Icons.store, color: Colors.white)),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Walk Around',
                            style: GoogleFonts.lato(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'offer - unlimited',
                            style: GoogleFonts.lato(
                                fontStyle: FontStyle.normal,
                                color: Colors.white,
                                fontSize: 15),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        backgroundColor: Colors.grey,
                        child: Icon(Icons.person, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              //=======This Class here show the media Screen===========
              MediaScreen()
            ],
          )
        ],
      )),
    );
  }
}
