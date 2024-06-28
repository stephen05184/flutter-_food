import 'package:flutter/material.dart';

class product3 extends StatefulWidget {
  const product3({super.key});

  @override
  State<product3> createState() => _product3State();
}

class _product3State extends State<product3> {
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
                'assets/images/image_11.png',
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
            'Hamburger Chicken Burger',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.star, color: Colors.orange, size: 20),
              SizedBox(width: 4),
              Text('4.6'),
              SizedBox(width: 8),
              Text('– 42 mins'),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Our chicken burger is a delicious and healthier alternative to traditional beef burgers, perfect for those looking for a lighter meal option. Try it today and experience the mouth-watering flavors of our Hamburger Chicken Burger!.',
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
                    max: 3,
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
                '\$12.48',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
