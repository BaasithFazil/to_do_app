import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Banner1 extends StatelessWidget {
  const Banner1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
        Center(
          child: Column(
            children: [

              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: SizedBox(
                  child: Image.asset("assets/vector1.jpg", height: 400.0,)),
              ),
                Text("WHAT ELSE YOU CAN DO WITH\nOUR APP", style: GoogleFonts.poppins(fontSize: 20.0, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20.0,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("* make a timeline of anything you do", textAlign: TextAlign.left, style: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w700),),
                    Text("* make your progress things better", textAlign: TextAlign.left, style: GoogleFonts.poppins(fontSize: 16.0, fontWeight: FontWeight.w700),),

                  ],
                ),

            ],
          ),
        ),
      
    );
  }
}