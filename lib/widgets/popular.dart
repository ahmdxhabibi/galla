import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Popular extends StatelessWidget {
  const Popular({
    super.key, 
    required this.imageUrl,
    required this.dateTime,
    required this.description
    });

  final String imageUrl, description, dateTime ;

  @override
  Widget build(BuildContext context) {
    return Container(
                height: 228,
                width: 290,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 150,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: DecorationImage(
                          image: AssetImage(imageUrl),
                          fit: BoxFit.fill
                        )
                        ),
                        child: Padding(padding: EdgeInsets.fromLTRB(194, 107, 10, 10),
                          child: Container(
                            height: 33,
                            width: 62,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xffFFEDE9)
                            ),
                            child: Center(
                              child: Text(
                                'Free',
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    color: const Color(0xffF86A30)
                                  ),),
                            ),
                          ),),
                      ),
                      Text(description,
                        style: GoogleFonts.poppins(
                          color: const Color(0xff15181F),
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                        ),),
                      Text(dateTime,
                        style: GoogleFonts.poppins(
                          color: const Color(0xff9096A6),
                          fontSize: 12
                        ),)
                    ],
                  ),
                ),
              );
  }
}