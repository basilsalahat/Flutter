import 'package:flutter/material.dart';
import 'package:project/selectedHouse.dart';
import 'package:project/sellerHomePage.dart';
import 'customerHomePage.dart';
import 'main.dart';
import 'package:google_fonts/google_fonts.dart';

enum type { Sell, Buy }

class signup extends StatelessWidget {
  const signup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
        Container(
          width: MediaQuery.of(context).size.width,
          color: Color.fromRGBO(249, 249, 251, 1),
          child: Padding(
            padding: EdgeInsets.only(top: 60,bottom: 60,left: 35,right: 35),
            child: Column(
              children: [
                Container(
                  child: Text("iHouse.com",
                    style: GoogleFonts.manrope(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(163, 163, 163, 1)
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                formsignup(),
              ],
            ),
          ),

        )
        ,
      ),
      floatingActionButton:FloatingActionButton(
        onPressed: (){
          // Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const sellerHomePage()),
          );
        },
        child: Icon(Icons.arrow_back_outlined),
        backgroundColor: Color.fromRGBO(76, 159, 193, 1),
      ) ,
    );
  }
}




class formsignup extends StatefulWidget {
  const formsignup({Key? key}) : super(key: key);

  @override
  State<formsignup> createState() => _formsignupState();
}

class _formsignupState extends State<formsignup> {
  @override
  TextEditingController _fullName = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  TextEditingController _mobileNumber = TextEditingController();

  final _formKey2 = GlobalKey<FormState>();

  String? accountType = "";

  Widget build(BuildContext context) {
    return Form(
        key: _formKey2,
        child: Column(
          children: [
            TextFormField(
                controller: _fullName,
                obscureText: false,
                style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                ),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                        Icons.person,
                        color:Color.fromRGBO(202, 202, 202, 1)
                    ),
                    labelText: "Full Name",
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    labelStyle: GoogleFonts.manrope(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(202, 202, 202, 1)
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
                controller: _email,
                obscureText: false,
                style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                        Icons.email,
                        color:Color.fromRGBO(202, 202, 202, 1)
                    ),
                    labelText: "Email",
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    labelStyle: GoogleFonts.manrope(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(202, 202, 202, 1)
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
                    return 'Please enter an email';
                  }
                  if ( !RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(value) ) {
                    return 'Please enter a valid email';
                  }
                  return null;
                }
            ),
            SizedBox(height: 25),

            TextFormField(
                controller: _pass,
                obscureText: true,
                style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                        Icons.password,
                        color:Color.fromRGBO(202, 202, 202, 1)
                    ),
                    labelText: "Password",
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    labelStyle: GoogleFonts.manrope(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(202, 202, 202, 1)
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
                    return 'Please enter a password';
                  }
                  if ( value.length < 8 ) {
                    return 'Password must be at least 8 digits';
                  }
                  return null;
                }
            ),
            SizedBox(height: 25,),

            TextFormField(
                controller: _mobileNumber,
                obscureText: false,
                style: GoogleFonts.manrope(
                    fontSize: 16,
                    fontWeight: FontWeight.w600
                ),
                decoration: InputDecoration(
                    prefixIcon: Icon(
                        Icons.onetwothree_rounded,
                        color:Color.fromRGBO(202, 202, 202, 1)
                    ),
                    labelText: "Mobile Number",
                    filled: true,
                    fillColor: Color.fromRGBO(255, 255, 255, 1),
                    labelStyle: GoogleFonts.manrope(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(202, 202, 202, 1)
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
                    return 'Please enter a mobile number';
                  }
                  if ( value.length <= 9) {
                    return 'Mobile number must be 10 digits';
                  }
                  return null;
                }
            ),
            Divider(
              color: Color.fromRGBO(0, 0, 0, 0),
            ),

            accounttype(),
            
            butt(context, "Login", () {
              _fullName.clear();
              _email.clear();
              _pass.clear();
              _mobileNumber.clear();
            }, _formKey2),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: "By using the app, you agree to \n the ",
                    style: GoogleFonts.manrope(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(70, 70, 70, 1)
                    ),
                    children: [
                    TextSpan(text: "Terms of use", style: GoogleFonts.manrope(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(76, 159, 193, 1)
                    )),
                    TextSpan(text: " and "),
                    TextSpan(text: "Privacy Policy", style: GoogleFonts.manrope(
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        color: Color.fromRGBO(76, 159, 193, 1)
                    ))
                  ]
                ),
              ),
            ),
          ],

        )
    );
  }
}

class accounttype extends StatefulWidget {
  const accounttype({Key? key}) : super(key: key);

  @override
  State<accounttype> createState() => _accounttypeState();
}

class _accounttypeState extends State<accounttype> {

  type? _type = type.Sell;

  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text("Account Purpose",style: GoogleFonts.manrope(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color:Colors.black54
          ),),
        ),
        RadioListTile<type>(
          title:  Text('Sell', style: GoogleFonts.manrope(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color:Colors.black54
                ),),
          value: type.Sell,
          groupValue: _type,
          onChanged: (type? value) {
            setState(() {
              _type = value;
            });
          },
        ),
        RadioListTile<type>(
          title:  Text('Rent',style: GoogleFonts.manrope(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color:Colors.black54
          ),),
          value: type.Buy,
          groupValue: _type,
          onChanged: (type? value) {
            setState(() {
              _type = value;
            });
          },
        ),
      ],
    );
  }
}


