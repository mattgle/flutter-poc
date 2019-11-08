import 'package:flutter/material.dart';

class Tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Container(
            padding: EdgeInsets.only(bottom: 10.0),
            color: Colors.white,
            child: TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: 'Library', icon: Icon(Icons.book)),
                  Tab(text: 'Wishlist', icon: Icon(Icons.star_border)),
                  Tab(text: 'Suggest', icon: Icon(Icons.add)),
                  Tab(text: 'Rentals', icon: Icon(Icons.check_circle_outline)),
                ])));
  }
}
