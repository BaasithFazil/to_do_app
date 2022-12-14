import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/widgets/supportpage.dart';
import 'package:todo_app/widgets/slideroute.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Column(
                children: [
                  Image.asset("assets/bannerimage.jpg"),
                ],
              ),
              Column(
                children: [
                  SizedBox(child: Text("TODO APP", style: GoogleFonts.poppins( fontWeight: FontWeight.bold, fontSize: 24.0),),),
                  SizedBox(child: Text("by", style: GoogleFonts.poppins( fontWeight: FontWeight.bold, fontSize: 20.0),),),
                  SizedBox(child: Text("Yaseer Thaha", style: GoogleFonts.poppins( fontWeight: FontWeight.bold, fontSize: 30.0),),),
                  SizedBox(
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, SlideRightRoute(page: const SupportPage()));
                    }, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.yellow,
                      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 20.0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0)
                      )

                    ),
                    child: Text("Get Started", style: GoogleFonts.poppins(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white))),)
                ],
              )
            ],
          )
        ),
      ),
    );
  }
}


route() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const SupportPage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(0.0, 1.0);
      const end = Offset.zero;
      final tween = Tween(begin: begin, end: end);
      final offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}