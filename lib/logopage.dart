import 'package:flutter/material.dart';

class logopage extends StatelessWidget {
  const logopage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 170,
              height: 170,
            ),
            Text(
              "BURGER KING",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 20,),
            ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.white),
              child: const Text(
                "Get Started",
                style: TextStyle(fontWeight:FontWeight.bold,color: Colors.redAccent, fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Signup() {}
}
