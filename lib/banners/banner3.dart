import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/modal/homepage.dart';

class Banner3 extends StatelessWidget {
  const Banner3({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              child: Image.asset("assets/vector3.jpg", height: 300.0,),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(child: Text("Unless our conception of patriotism is progressive,It cannot hope to embody the real affection and the real interest of the nation.", style: GoogleFonts.poppins(fontSize: 20.0, fontWeight: FontWeight.bold),)),
            ),
            SizedBox(
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomePage()));
            }, 
            style: ElevatedButton.styleFrom(
                primary: Colors.yellow,
                padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 15.0),
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50.0)
              )
              ),
            child: Text("Get Started", style: GoogleFonts.poppins(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white))),)
          ],
        ),
      )
    );
  }
}