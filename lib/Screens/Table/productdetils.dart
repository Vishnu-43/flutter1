import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey[200], // Change the background color
      appBar: AppBar(
        title: Text("Product Details"),
        //backgroundColor: Colors.transparent,
        //elevation:,
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          // Add your onPressed code here!
        },
        label: const Text('Buy Now'),
        icon: const Icon(Icons.shopping_basket),
        backgroundColor: Colors.teal,
      ),
      body: Container(
        height: size.height,
        width: size.width,
        child: ListView(
          padding: const EdgeInsets.only(left: 20,right: 20,top: 100,bottom: 30),
          children: [
            Image.network(
              "https://dlcdnrog.asus.com/rog/media/1672656619330.webp",
              height: MediaQuery.of(context).size.height / 2.5,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16.0),
            Text(
              '2023 ROG Strix Laptop',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28.0,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8.0),
            Text(
              'Take your gaming to the next level!',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "The 2023 ROG Strix laptop lineup offers an exceptional gaming experience. With the latest technology and cutting-edge design, you can leave your opponents in the dust. This laptop features a 16-inch, 16:10 aspect ratio display for immersive gaming. Whether you're a professional gamer or a casual player, the ROG Strix laptop is built to meet your needs.",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                ),
              ),
            ),
             SizedBox(height: 16.0),
            const Text(
              'Price: \$8 0,000/-',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.teal,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
