import 'package:burgerapp/Userdetails.dart';
import 'package:flutter/material.dart';

class product1 extends StatefulWidget {
  const product1({super.key});

  @override
  State<product1> createState() => _product1State();
}

class _product1State extends State<product1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(

        body: Center(
          child: ProductScreen(),
        ),
      ),
    );
  }
}

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/images/image_9.png',
                height: 300,
              ),
              Positioned(
                top: -18,
                left: -18,
                child: IconButton(
                  icon: Icon(Icons.arrow_back, color: Colors.black),
                  onPressed: () {
                    // Handle back action
                  },
                ),
              ),
              Positioned(
                top: -15,
                right: -15,
                child: IconButton(
                  icon: Icon(Icons.search, color: Colors.black),
                  onPressed: () {
                    // Handle search action
                  },
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Cheeseburger Wendys Burger',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.star, color: Colors.orange, size: 20),
              SizedBox(width: 4),
              Text('4.9'),
              SizedBox(width: 8),
              Text('– 26 mins'),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'The Cheeseburger Wendys Burger is a classic fast food burger that packs a punch of flavor in every bite. Made with a juicy beef patty cooked to perfection, its topped with melted American cheese, crispy lettuce, ripe tomato, and crunchy pickles.',
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text('Spicy'),
                  Slider(
                    value: 1,
                    onChanged: (value) {},
                    min: 0,
                    max: 2,
                    divisions: 2,
                    label: 'hot',
                    activeColor: Colors.red,
                  ),
                ],
              ),
              Column(
                children: [
                  Text('Portion'),
                  Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.red, // Set your desired background color here
                            shape: BoxShape.rectangle),
                        child: IconButton(
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            // Decrease portion size
                          },
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('2',style: TextStyle(),),
                      SizedBox(width: 10,),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.rectangle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.add),
                          onPressed: () {
                            // Increase portion size
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context)=>Userdetails()));
                    // Handle order now action
                  },
                  style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.red
                  ),
                  child: Text('ORDER NOW',style: TextStyle(color: Colors.white),),
                ),
              ),
              SizedBox(width: 16),
              Text(
                '\$8.28',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
