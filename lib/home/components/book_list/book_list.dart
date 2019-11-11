import 'package:flutter/material.dart';

class Book {
  int id;
  String author;
  String title;
  String genre;
  String publisher;
  String year;
  String imageUrl;

  Book(this.id, this.author, this.title, this.genre, this.publisher, this.year,
      this.imageUrl);
}

var bookExample = new Book(1, "Emmie Thiel", "Ring of Bright Water",
    "Short story", "Butterworth-Heinemann", "1968", null);

class BookListState extends State<BookList> {
  final _books = <Book>[];
  final _titleStyle = TextStyle(
      color: Color(0xff4A4A4A), fontSize: 17.0, fontWeight: FontWeight.bold);
  final _subtitleStyle = TextStyle(color: Color(0xff4A4A4A), fontSize: 15.0);
  Widget _buildRow(Book book) {
    return Center(
        child: Container(
            decoration: new BoxDecoration(
                boxShadow: [
                  new BoxShadow(
                    color: Colors.grey,
                    blurRadius: 0.1,
                  ),
                ],
                color: Colors.white,
                borderRadius: new BorderRadius.all(const Radius.circular(4))),
            margin: EdgeInsets.only(top: 10.0),
            width: 335.0,
            height: 90.0,
            child: ListTile(
                title: Text(
                  book.title,
                  style: _titleStyle,
                ),
                subtitle: Text(book.author, style: _subtitleStyle),
                leading: Image.network(
                    "http://wolox-training.s3.amazonaws.com/uploads/el-psicoanalista-analyst-john-katzenbach-paperback-cover-art.jpg"))));
  }

  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(16.0),
        // itemCount: _books.length,
        itemCount: 110,
        itemBuilder: (context, index) {
          // final book = _books[index];
          // return _buildRow(book);
          return _buildRow(bookExample);
        });
  }
}

class BookList extends StatefulWidget {
  @override
  BookListState createState() => BookListState();
}
