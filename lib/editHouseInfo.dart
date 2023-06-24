import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io' as io;

import 'package:image_picker/image_picker.dart';


class editHouseInfo extends StatelessWidget {
  const editHouseInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: edit(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}


class edit extends StatefulWidget {
  const edit({Key? key}) : super(key: key);

  @override
  State<edit> createState() => _editState();
}

class _editState extends State<edit> {

  io.File? file;
  Future picker() async{
    final img = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      file = io.File(img!.path);
    });
  }




  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child:
      Container(
        width: MediaQuery.of(context).size.width,
        color: Color.fromRGBO(249, 249, 251, 1),
        child: Padding(
          padding: EdgeInsets.only(top: 60,bottom: 60,left: 25,right: 25),
          child: Column(
            children: [
              Container(
                child: Text("Edit House Info",
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
              ),
              SizedBox(height: 40,),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                        obscureText: false,
                        keyboardType: TextInputType.number,
                        style: GoogleFonts.manrope(
                            fontSize: 16,
                            fontWeight: FontWeight.w500
                        ),
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                                Icons.price_change,
                                color:Color.fromRGBO(202, 202, 202, 1)
                            ),
                            labelText: "Price Per Month",
                            filled: true,
                            fillColor: Color.fromRGBO(255, 255, 255, 1),
                            labelStyle: GoogleFonts.manrope(
                                color:Color.fromRGBO(202, 202, 202, 1),
                                fontSize: 16,
                                fontWeight: FontWeight.w500
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
                            return 'Please enter your Price Per Month';
                          }
                          if ( value == "0" ) {
                            return 'The price cannot be zero';
                          }
                          return null;
                        }
                    ),
                    SizedBox(height: 25),
                    Container(
                      width: 300,
                      height: 250,
                      margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(255, 255, 255, 1)
                      ),
                      child:
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                              side: BorderSide(
                                  color: Color.fromRGBO(255, 255, 255, 1)
                              )
                          ),
                          onPressed: (){
                            picker();
                          },
                          child: file == null ? Icon(Icons.image_search_rounded, size: 100,
                            color: Color.fromRGBO(202, 202, 202, 1),) : Image.file(file!)
                      ),

                    ),
                  ],
                ),
              )
            ],
          ),
        ),

      )
      ,
    ) ;
  }
}
