import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class customerHomePage extends StatefulWidget {
  const customerHomePage({Key? key}) : super(key: key);

  @override
  State<customerHomePage> createState() => _customerHomePageState();
}

class _customerHomePageState extends State<customerHomePage> {

  List<String> places = <String>['Nablus', 'Jenin', 'AAUP', 'NNU'];
  String SelectedCity = "Nablus";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(249, 249, 251, 1),
        margin: const EdgeInsets.only(top: 60.0, right: 25.0, left: 25.0),
        child: SingleChildScrollView(
          child:
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "You are here",
                    style: GoogleFonts.manrope(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(161, 167, 176, 1)
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  DropdownButton(
                      items: places.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      value: SelectedCity,
                      icon: Icon(Icons.keyboard_arrow_down),
                      onChanged: (value){
                        setState(() {
                          SelectedCity = value as String;
                        });
                      },
                      style: GoogleFonts.manrope(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.black
                      ),
                      underline: SizedBox(),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Enter city or house name",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),

                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          card(),
                          SizedBox(width: 50,),
                          card(),
                          SizedBox(width: 50,),
                          card(),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
          ,
        ),
      ),
    );
  }
}

class card extends StatefulWidget {
  const card({Key? key}) : super(key: key);

  @override
  State<card> createState() => _cardState();
}

class _cardState extends State<card> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 50,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("imgs/background.png"),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("The Arsana Estate",
                            style: GoogleFonts.manrope(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            )
                        ),
                        Text("\$ 1420",
                            style: GoogleFonts.manrope(
                                fontSize: 20,
                                fontWeight: FontWeight.w800,
                                color: Color.fromRGBO(76, 159, 193, 1)
                            ) )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Jl. Kartika Plaza, 38/1",
                            style: GoogleFonts.manrope(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color:Colors.black54
                            )
                        ),
                        Text("Per Month",
                            style: GoogleFonts.manrope(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color:Colors.black54
                            )
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.bed, size: 25, color : Colors.black54),
                        RichText(
                          text: TextSpan(
                              text: "  5  ",
                              style: GoogleFonts.manrope(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54
                              ),
                              children: [
                                TextSpan(
                                    text: "bedrooms"
                                )
                              ]
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
