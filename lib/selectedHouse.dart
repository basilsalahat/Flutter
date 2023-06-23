import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/contactInfo.dart';

class selectedHouse extends StatelessWidget {
  const selectedHouse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SingleChildScrollView(
        child:
        Container(
          color: Color.fromRGBO(255, 255, 255, 1),
          width: MediaQuery.of(context).size.width,
          padding:EdgeInsets.only(top : 30, left: 25,right: 25) ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    IconButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.arrow_back_outlined,size: 30,))
                  ],
                ),
              ),
              Divider(),
              Container(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 250,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://images.unsplash.com/photo-1523217582562-09d0def993a6?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80"),
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
                    Divider(),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child:
                      Text("Excellent two-storey villa with a terrace, private pool and parking spaces is locatedonly 5 minutes from the Indian Ocean",
                          style: GoogleFonts.manrope(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                        textAlign: TextAlign.justify,
                      )
                      ,
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage("https://images.unsplash.com/photo-1438761681033-6461ffad8d80?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80"),
                              ),
                            )

                        ),
                        SizedBox(width: 10,),
                        RichText(
                          text: TextSpan(
                              text: "Host ",
                              style: GoogleFonts.manrope(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black38
                              ),
                              children: [
                                TextSpan(
                                    text: "Kanda Nok",
                                    style: GoogleFonts.manrope(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black54
                                    )
                                )
                              ]
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Сonveniences at home",
                            style: GoogleFonts.manrope(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            )
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Container(
                      height: 50,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Text("Free parking",style: TextStyle(backgroundColor: Colors.white)
                          ),
                          SizedBox(width: 10,),
                          Text("TV Set",style: TextStyle(backgroundColor: Colors.white)
                          ),
                          SizedBox(width: 10,),
                          Text("Video monitoring",style: TextStyle(backgroundColor: Colors.white)
                          ),
                          SizedBox(width: 10,),
                          Text("Air conditioning",style: TextStyle(backgroundColor: Colors.white)
                          ),
                          SizedBox(width: 10,),
                          Text("GYM",style: TextStyle(backgroundColor: Colors.white)
                          ),
                          SizedBox(width: 10,),
                          Text("Swimming hall",style: TextStyle(backgroundColor: Colors.white)
                          ),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),



                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 30,right: 30),
                height: 58,
                child:
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const contactInfo()),
                    );
                  },
                  child: Text(
                      "Contact Info",
                      style: GoogleFonts.manrope(
                          fontSize: 18,
                          fontWeight: FontWeight.w600
                      )
                  ),
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      backgroundColor: Color.fromRGBO(76, 159, 193, 1),
                      minimumSize: Size.fromHeight(50)
                  ),
                )
                ,
              )
            ],
          ),
        )
        ,
      )
      ,
    );
  }
}
