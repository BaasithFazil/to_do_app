import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Banner2 extends StatelessWidget {
  const Banner2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: SizedBox(child: Image.asset("assets/vector2.jpg", height: 400.0,)),
          ),
          const SizedBox(height: 20.0,),
          Text("Progressive and create To-do List", style: GoogleFonts.poppins(fontSize: 20.0, fontWeight: FontWeight.bold),),
          Text("Access it where ever you are.", style: GoogleFonts.poppins(fontSize: 20.0, fontWeight: FontWeight.bold),),
          Text("Be productive at any time", style: GoogleFonts.poppins(fontSize: 20.0, fontWeight: FontWeight.bold),),

        ],
        ),
      )
    );
  }
}