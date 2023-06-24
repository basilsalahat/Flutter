import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'signup.dart';
import 'main.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
        Container(
          color:Color.fromRGBO(249, 249, 251, 1),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.only(top: 60,left: 35,right: 35,bottom: 60),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Text("iHouse",
                    style: GoogleFonts.manrope(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromRGBO(163, 163, 163, 1)
                    ),
                  ),
                ),
                SizedBox(height: 40,),
                Image.asset(
                  "imgs/lock.png",
                  fit: BoxFit.cover,
                  width: 230,
                ),
                SizedBox(height: 40,),
                formm(),
                signUpOption(),
              ],
            ),
          ),
        )
        ,
      ),
    );
  }

  Row signUpOption() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => signup()));
          },
          child: Text(
            "Create New Account",
           style: GoogleFonts.manrope(
               fontSize: 18,
               fontWeight: FontWeight.w600,
             color: Color.fromRGBO(62, 62, 62, 1)
           ),
          ),


        ),
      ],
    );
  }

}



class formm extends StatefulWidget {
  const formm({Key? key}) : super(key: key);

  @override
  State<formm> createState() => _formmState();
}

class _formmState extends State<formm> {
  @override
  TextEditingController _email = TextEditingController();
  TextEditingController _pass = TextEditingController();
  final _formKey1 = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Form(
      key: _formKey1,
        child: Column(
          children: [
            TextFormField(
              controller: _email,
              obscureText: false,
              style: GoogleFonts.manrope(
                fontSize: 18,
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
                  fontSize: 18,
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
                  fontSize: 18,
                  fontWeight: FontWeight.w600
              ),
              decoration: InputDecoration(
                  prefixIcon: Icon(
                      Icons.password_rounded,
                      color:Color.fromRGBO(202, 202, 202, 1)
                  ),
                  labelText: "Password",
                  filled: true,
                  fillColor: Color.fromRGBO(255, 255, 255, 1),
                  labelStyle: GoogleFonts.manrope(
                      fontSize: 18,
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
                    return 'Please enter your password';
                  }
                  if ( value.length < 8 ) {
                    return 'Password must be at least 8 digits';
                  }
                  return null;
                }
            ),
            SizedBox(height: 40,),
            butt(context, "Login", () {
              _email.clear();
              _pass.clear();
            }, _formKey1,),
          ],
        )
    );
  }
}
