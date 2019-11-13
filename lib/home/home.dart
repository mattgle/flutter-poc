import 'package:flutter/material.dart';

import 'components/book_list/book_list.dart';
// import 'components/tabs/tabs.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomeState();
}

class HomeState extends State<Home> {
  int _selectedPage = 0;
  final _pageOptions = [
    BookList(),
    Text('Items 2'),
    Text('Items 3'),
    Text('Items 4')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                title: Text('Library'), icon: Icon(Icons.book)),
            BottomNavigationBarItem(
                title: Text('Wishlist'), icon: Icon(Icons.star_border)),
            BottomNavigationBarItem(
                title: Text('Suggest'), icon: Icon(Icons.add)),
            BottomNavigationBarItem(
                title: Text('Rentals'), icon: Icon(Icons.check_circle_outline))
          ],
          currentIndex: _selectedPage,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.blue,
          onTap: (int index) {
            setState(() {
              _selectedPage = index;
            });
          },
        ),
        appBar: AppBar(
            title: Text(
              'LIBRARY',
              style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
            ),
            flexibleSpace: Image(
              image: AssetImage('images/bc_nav_bar.png'),
              fit: BoxFit.fill,
            ),
            backgroundColor: Color(0xffeaf6f),
            elevation: 0.0,
            leading: IconButton(
              icon: const ImageIcon(AssetImage('images/ic_notifications.png')),
              tooltip: 'Alert',
              onPressed: () {},
            )),
        body: _pageOptions[_selectedPage]);
  }
}
