import 'package:flutter/material.dart';
import 'package:foodDelivery/widgets/body.dart';

import '../data/data.dart';
import 'cart_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        leading: IconButton(
            icon: Icon(
              Icons.account_circle,
            ),
            iconSize: 30,
            onPressed: () {}),
        title: Text('Food Delivery'),
        centerTitle: true,
        actions: [
          Stack(
            alignment: Alignment.center,
            children: [
              IconButton(
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CartScreen(),
                    )),
                icon: Icon(
                  Icons.shopping_cart,
                  size: 25.0,
                ),
              ),
              Positioned(
                right: 5,
                top: 5,
                child: Container(
                  height: 18,
                  width: 18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                  child: Text(
                    currentUser.cart.length.toString(),
                    style: TextStyle(fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: HomeScreenBody(),
    );
  }
}
