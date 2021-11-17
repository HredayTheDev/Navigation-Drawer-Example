import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Center(
              child: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    image: DecorationImage(
                        image: AssetImage("assets/images/profile.jpg"),
                        fit: BoxFit.cover)),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Hello Mr. Hreday Sagar Chakraborty",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ),

            
          ],
        ),
      ),
    );
  }
}
