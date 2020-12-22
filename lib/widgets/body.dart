import 'package:flutter/material.dart';

import 'nearby_restaurant.dart';
import 'recent_orders.dart';

class HomeScreenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                fillColor: Colors.white,
                filled: true,
                prefixIcon: Icon(
                  Icons.search,
                  size: 30,
                ),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.clear),
                ),
                hintText: 'Search Food or Restaurants',
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: .8),
                  borderRadius: BorderRadius.circular(30),
                )),
          ),
        ),
        RecentOrders(),
        NearbyRestaurant(),
      ],
    );
  }
}
