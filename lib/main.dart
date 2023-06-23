import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:project/signin.dart';


void main(){
  runApp(MyApp());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: welcomePageDesign(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


class welcomePageDesign extends StatefulWidget {
  const welcomePageDesign({Key? key}) : super(key: key);

  @override
  State<welcomePageDesign> createState() => _welcomePageDesignState();
}

class _welcomePageDesignState extends State<welcomePageDesign> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top:60,left: 24,bottom: 60,right: 24),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("imgs/background.png"),
              fit: BoxFit.cover
          )
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  padding: EdgeInsets.all(36),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: Color.fromRGBO(255, 255, 255, 1)
                  ),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Find your dream house to stay",
                            style: GoogleFonts.manrope(
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                                color: Color.fromRGBO(70, 70, 70, 1)
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 20),
                            child:
                            Text("Long-term rental of rooms with a guarantee of conformity with photographs",
                              style: GoogleFonts.manrope(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromRGBO(70, 70, 70, 1)),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top:30),
                              child: Center(
                                  child:  ElevatedButton(
                                    child: Text("Get Started",
                                      style: GoogleFonts.manrope(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    onPressed: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => const Signin()),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Color.fromRGBO(76, 159, 193, 1),
                                        padding: EdgeInsets.only(top:15,left: 45,right: 45,bottom: 15),
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(12))
                                    ),
                                  )
                              ))]),
                  )
              )],
          ),
        ],
      ),
    );
  }
}


Container butt(BuildContext context, String title, Function onTap, final key) {
  return Container(
    width: 300,
    height: 58,
    margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
    child: ElevatedButton(
      onPressed: () {
        onTap(
            key.currentState!.validate()
        );
      },
      child: Text(
          title,
          style: GoogleFonts.manrope(
              fontSize: 18,
              fontWeight: FontWeight.w600
          )
      ),
      style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12)),
          backgroundColor: Color.fromRGBO(76, 159, 193, 1)
      ),
    ),
  );
}