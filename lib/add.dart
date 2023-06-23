import 'dart:io' as io;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'signup.dart';

class add extends StatelessWidget {
  const add({Key? key}) : super(key: key);


@override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
        Container(
          color: Color.fromRGBO(249, 249, 251, 1),
          child: Padding(
            padding: EdgeInsets.fromLTRB(
                MediaQuery.of(context).size.height * 0.05,
                MediaQuery.of(context).size.height * 0.1,
                MediaQuery.of(context).size.height * 0.05, 0
            ),
            child: Column(
              children: [

                Container(
                  child: Text("Add new house",
                    style: GoogleFonts.manrope(
                     fontSize: 20,
                     fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                formadd(),

              ],
            ),
          ),

        )
        ,
      ),
    );
  }
}


class formadd extends StatefulWidget {
  const formadd({Key? key}) : super(key: key);

  @override
  State<formadd> createState() => _formaddState();
}

class _formaddState extends State<formadd> {

  io.File? file;
  Future picker() async{
    final img = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      file = io.File(img!.path);
    });
  }

  @override
  TextEditingController _houseName = TextEditingController();
  TextEditingController _pricePerMonth = TextEditingController();
  TextEditingController _numberOfBedrooms = TextEditingController();

  final _formadd = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Form(
      key: _formadd,
        child: Column(
          children: [

            TextFormField(
                controller: _houseName,
                obscureText: false,
                style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                        Icons.home,
                        color:Color.fromRGBO(202, 202, 202, 1)
                    ),
                    labelText: "House Name",
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    labelStyle: GoogleFonts.manrope(
                      color: Color.fromRGBO(202, 202, 202, 1),
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
                    return 'Please enter your House Name';
                  }
                  if ( !RegExp(r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$").hasMatch(value) ) {
                    return 'Please enter a valid House Name';
                  }
                  return null;
                }
            ),
            SizedBox(height: 25),






            TextFormField(
                controller: _pricePerMonth,
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







            TextFormField(
                controller: _numberOfBedrooms,
                keyboardType: TextInputType.number,
                obscureText: false,
                style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                ),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                        Icons.bedroom_parent_rounded,
                        color:Color.fromRGBO(202, 202, 202, 1)
                    ),
                    labelText: "Number of Bedrooms",
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    labelStyle: GoogleFonts.manrope(
                        color: Color.fromRGBO(202, 202, 202, 1),
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
                    return 'Please enter your Number of Bedrooms';
                  }
                  if ( value == "0") {
                    return 'Num of bedrooms cannot be zero';
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


            SizedBox(height: 25),
            Container(
              width: 300,
              height: 58,
              margin: const EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: ElevatedButton(
                onPressed: () {
                  if (_formadd.currentState!.validate()) {

                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title:  Text(' Room has been added'),
                        content: Text('Do you want to add housing again or return to the home page?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.pop(context, 'Cancel'),
                            child: const Text('Add housing'),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context, MaterialPageRoute(builder: (context) => signup()));
                            },
                            child: const Text('Go to home page'),
                          ),
                        ],
                      ),

                  );
                }

                },
                child: Text(
                    "Submit",
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
            ),
            SizedBox(height: 25),
          ],
        )
    );
  }
}
