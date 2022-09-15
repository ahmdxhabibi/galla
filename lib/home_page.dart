import 'package:flutter/material.dart';
import 'package:galla/widgets/events.dart';
import 'package:galla/widgets/popular.dart';
import 'package:google_fonts/google_fonts.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20,),
              top(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 41,
                  left: 24
                ),
                child: Text('Upcoming Events',
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w600
                ),),
              ),
              const SizedBox(height: 13,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(width: 24,),
                    Events(
                      date: 9,
                      month: 'Sept',
                      imageUrl: 'assets/events1.png',
                      location: 'Bandung, ID',
                      description: 'Lampion: From Earth to\nMoon 2022',
                    ),
                    Events(
                      date: 12,
                      month: 'Sept',
                      imageUrl: 'assets/events2.png',
                      location: 'Bandung, ID',
                      description: 'Car Free Day in Bandung\n06:00 PM - 10:00 PM',
                    ),
                    const SizedBox(width: 24,),
                  ],
                ),
              ),
              const SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Popular Now',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: const Color(0xff15181F)
                      ),),
                    Text('See all',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: const Color(0xff8F929B)
                      ),)
                  ],
                ),
              ),
              const SizedBox(height: 16,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(width: 24,),
                    const Popular(
                      imageUrl: 'assets/popular1.png',
                      description: 'Dancing in The Moon',
                      dateTime: '9 August 2022 • 17:00 PM',
                    ),
                    const Popular(
                      imageUrl: 'assets/popular2.png',
                      description: 'Car Free Day in Bandung',
                      dateTime: '12 September 2022 • 17:00 PM',
                    ),
                    const SizedBox(width: 24,),
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        iconSize: 30,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,
              color: Color(0xffF56B2A),),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_rounded),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline_outlined),
            label: 'Profile',
          ),
        ],
      ),
      ));
  }
}

Widget top() {
  return Padding(padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Find events near',
                        style: GoogleFonts.poppins(
                          color: const Color(0xffA6A7AB)
                        ),),
                      Text('Bandung, ID',
                        style: GoogleFonts.poppins(
                          color: const Color(0xff15181F),
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),)
                    ],
                  ),
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/profile.png'),
                    radius: 24,
                  )
                ],
              ),
            const SizedBox(height: 23,),
            Container(
              height: 54,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 18,
                ),
                child: TextFormField(
                  style: GoogleFonts.poppins(),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    icon: const Icon(Icons.search,
                      color: Color(0xffA1A4A9),
                      size: 24,),
                    filled: true,
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none
                    ),
                    hintText: 'Search all events...',
                    hintStyle: GoogleFonts.poppins(
                      color: const Color(0xffA1A4A9)
                    )
                  ),
                ),
              )
            ),],
          ),
        );
}