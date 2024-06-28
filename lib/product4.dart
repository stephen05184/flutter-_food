import 'package:flutter/material.dart';

class product4 extends StatefulWidget {
  const product4({super.key});

  @override
  State<product4> createState() => _product4State();
}

class _product4State extends State<product4> {
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
                'assets/images/image_12.png',
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
            'Fried Chicken Burger',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.star, color: Colors.orange, size: 20),
              SizedBox(width: 4),
              Text('4.5'),
              SizedBox(width: 8),
              Text('– 14 mins'),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Indulge in our crispy and savory Fried Chicken Burger, made with a juicy chicken patty, hand-breaded and deep-fried to perfection, served on a warm bun with lettuce, tomato, and a creamy sauce.',
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
                    max: 1,
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
                      Text('4',style: TextStyle(),),
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
                  onPressed: () {
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
                '\$26.99',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
