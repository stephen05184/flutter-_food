import 'package:flutter/material.dart';

class product2 extends StatefulWidget {
  const product2({super.key});

  @override
  State<product2> createState() => _product2State();
}

class _product2State extends State<product2> {
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
                'assets/images/image_1 (3).png',
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
            'Hamburger Veggie Burger',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.star, color: Colors.orange, size: 20),
              SizedBox(width: 4),
              Text('4.8'),
              SizedBox(width: 8),
              Text('– 14 mins'),
            ],
          ),
          SizedBox(height: 16),
          Text(
            'Enjoy our delicious Hamburger Veggie Burger, made with a savory blend of fresh vegetables and herbs, topped with crisp lettuce, juicy tomatoes, and tangy pickles, all served on a soft, toasted bun. ',
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
                    label: 'Mild',
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
                      Text('1',style: TextStyle(),),
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
                '\$9.99',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
