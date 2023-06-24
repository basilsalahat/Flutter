import 'package:flutter/material.dart';
import 'package:project/selectedHouse.dart';
import 'package:project/sellerHomePage.dart';
import 'package:project/signin.dart';
import 'package:project/signup.dart';

import 'add.dart';
import 'contactInfo.dart';
import 'customerHomePage.dart';
import 'editHouseInfo.dart';


class testPage extends StatefulWidget {
  const testPage({Key? key}) : super(key: key);

  @override
  State<testPage> createState() => _testPageState();
}

class _testPageState extends State<testPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(255, 255, 255, 1),
      child:
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Signin()));
                },
                child: Text("Login Page")
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const signup()),
                  );
                },
                child: Text("Sign Up Page")
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const add()),
                  );
                },
                child: Text("Add House Page")
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const selectedHouse()),
                  );
                },
                child: Text("Show House Info")
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const customerHomePage()),
                  );
                  },
                child: Text("Customer Home Page")
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const sellerHomePage()),
                  );
                },
                child: Text("Seller Home Page")
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const editHouseInfo()),
                  );
                },
                child: Text("Edit House Info Page")
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const contactInfo()),
                  );
                },
                child: Text("Contact Info Page")
            )
          ],
        )
      ,
    );
  }
}
