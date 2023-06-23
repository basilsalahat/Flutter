import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'signup.dart';

class contactInfo extends StatelessWidget {
  const contactInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding:EdgeInsets.only(top : 60, left: 25,right: 25,bottom: 60) ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text("Contact Info",
                  style: GoogleFonts.manrope(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  )),
            ),
            Container(
              margin: EdgeInsets.only(left: 30,right: 30),
              child:
                Column(
                  children: [
                    TextFormField(
                        enabled: false,
                        style: GoogleFonts.manrope(
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                                Icons.house,
                                color:Colors.black45
                            ),
                            labelText: "House Name",
                            filled: true,
                            fillColor: Color.fromRGBO(255, 255, 255, 1),
                            labelStyle: GoogleFonts.manrope(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black45
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                            )
                        )
                        ,
                        validator: (value){
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          if ( !RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$").hasMatch(value) ) {
                            return 'Please enter a valid name';
                          }
                          return null;
                        }
                    ),
                    SizedBox(height: 25),
                    TextFormField(
                        enabled: false,
                        style: GoogleFonts.manrope(
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                                Icons.price_check_outlined,
                                color:Colors.black45
                            ),
                            labelText: "Prise Per Month",
                            filled: true,
                            fillColor: Color.fromRGBO(255, 255, 255, 1),
                            labelStyle: GoogleFonts.manrope(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black45
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                            )
                        )
                        ,
                        validator: (value){
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          if ( !RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$").hasMatch(value) ) {
                            return 'Please enter a valid name';
                          }
                          return null;
                        }
                    ),
                    SizedBox(height: 25),
                    TextFormField(
                        enabled: false,
                        style: GoogleFonts.manrope(
                            fontSize: 16,
                            fontWeight: FontWeight.w600
                        ),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                                Icons.phone,
                                color:Colors.black45
                            ),
                            labelText: "Phone Number",
                            filled: true,
                            fillColor: Color.fromRGBO(255, 255, 255, 1),
                            labelStyle: GoogleFonts.manrope(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Colors.black45
                            ),
                            floatingLabelBehavior: FloatingLabelBehavior.never,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: const BorderSide(width: 0, style: BorderStyle.none),
                            )
                        )
                        ,
                        validator: (value){
                          if (value == null || value.isEmpty) {
                            return 'Please enter your name';
                          }
                          if ( !RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$").hasMatch(value) ) {
                            return 'Please enter a valid name';
                          }
                          return null;
                        }
                    ),
                    SizedBox(height: 50),
                    OutlinedButton.icon(
                        onPressed: (){},
                        icon: Icon(Icons.call,size: 25,),
                        label: Text("Click to Call",style: GoogleFonts.manrope(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(70, 70, 70, 1)
                        )
                        ),
                        style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                        )
                    ),
                  ],
                )
              ,
            ),
            Container(
             margin: EdgeInsets.only(left: 30,right: 30),
             height: 58,
             child:
             ElevatedButton(
               onPressed: () {
                 Navigator.pop(context);
               },
               child: Text(
                   "Back",
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
      ),
    );
  }
}
