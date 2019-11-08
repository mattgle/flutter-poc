import 'package:flutter/material.dart';

import 'components/book_list/book_list.dart';
import 'components/tabs/tabs.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'LIBRARY',
            style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
          ),
          flexibleSpace: Image(
            image: AssetImage('images/bc_nav_bar.png'),
            fit: BoxFit.fitWidth,
          ),
          backgroundColor: Color(0xffeaf6f),
          elevation: 0.0,
          leading: IconButton(
            icon: const ImageIcon(AssetImage('images/ic_notifications.png')),
            tooltip: 'Alert',
            onPressed: () {},
          )),
      body: BookList()
    );
  }
}

// Container(
//           color: Color(0xffeaf6fa),
//           child: Column(
//             children: <Widget>[
//               BookList(),
//               Tabs(),
//             ],
//           )),
