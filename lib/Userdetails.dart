


import 'package:burgerapp/Home page.dart';
import 'package:burgerapp/product1.dart';
import 'package:flutter/material.dart';

class Userdetails extends StatelessWidget {
  const Userdetails({super.key});

  get ageController => null;

  get dlController => null;

  get phnController => null;

  get firestore => null;

    @override
    Widget build(BuildContext context) {
      var nameController;
      return Center(
          child: Scaffold(
            backgroundColor: Colors.red.shade100,
            body: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [

                      Text(
                        'BURGER KING',
                        style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
                      ),

                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      TextFormField(
                        controller: nameController,
                        maxLength: 15,
                        decoration: InputDecoration(
                            labelText: 'Name', border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: ageController,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'Email', border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: dlController,
                        maxLength: 20,
                        decoration: InputDecoration(
                            labelText: 'Password',
                            border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: ageController,
                        decoration: InputDecoration(
                            labelText: 'Address', border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        controller: phnController,
                        maxLength: 10,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            labelText: 'Phone No.', border: OutlineInputBorder()),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                          var adController;
                          if (nameController.text.isNotEmpty &&
                              ageController.text.isNotEmpty &&
                              dlController.text.isNotEmpty &&
                              adController.text.isNotEmpty &&
                              phnController.text.isNotEmpty) {
                            firestore.collection("Driver Details").add({
                              "Name": nameController.text,
                              "Email": ageController.text,
                              "Password": dlController.text,
                              "Adress": adController.text,
                              "Phone No.": phnController.text
                            });
                          }
                        },
                        child: Text(
                          "Submit ",
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                      )


                    ],
                  ),
                ),
              ),
            ),
          ));
    }
  }

