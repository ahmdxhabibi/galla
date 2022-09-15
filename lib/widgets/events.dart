import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:blur/blur.dart';

class Events extends StatelessWidget {
  const Events({
    super.key, 
    required this.imageUrl, 
    required this.date, 
    required this.month,
    required this.location,
    required this.description
    });

  final String imageUrl, month, location, description;
  final int date;

  @override
  Widget build(BuildContext context) {
    return Container(
              width: 200,
              height: 262,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12)
              ),
              child: Padding(padding: EdgeInsets.all(12),
                child: Column(
                  children: [
                    Container(
                      height: 106,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(imageUrl),
                          fit: BoxFit.fill
                        )
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 12,
                          top: 12,
                          right: 132,
                          bottom: 62
                        ),
                        child: Container(
                          height: 34,
                          width: 34,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: const Color(0xffFCFFFF).withOpacity(.1),
                          ),
                          child: Column(
                            children: [
                              Text(date.toString(),
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13
                                ),),
                              Text(month,
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 8,
                                ),),
                            ],
                          ),
                        ).frosted(
                          blur: 8,
                          borderRadius: BorderRadius.circular(8)
                        ),
                      ),
                    ),
                    const SizedBox(height: 10,),
                    Row(
                      children: [
                        const Icon(Icons.location_on_rounded,
                          color: Color(0xff9093A2),),
                        Text(location,
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            color: const Color(0xff9093A2)
                          ),)
                      ],
                    ),
                    Text(description,
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff15181F)
                      ),),
                    const SizedBox(height: 20,),
                    Container(
                      height: 33,
                      width: 176,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: const Color(0xffF86A30),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8)
                          ),
                        ),
                        onPressed: () {},
                        child: Text('Join',
                          style: GoogleFonts.poppins(
                            color: Colors.white
                          ),)),
                    )
                  ],
                ),),
            );
  }
}