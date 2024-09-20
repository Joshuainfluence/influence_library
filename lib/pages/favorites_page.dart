import 'package:flutter/material.dart';
import 'package:influence_library/pages/read_page.dart';
import 'package:influence_library/pages/book_page.dart';


class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});
  // final List<Book> favoriteBooks;
  // final Function(Book) onDelete;
  //
  // FavoritesPage({
  //   required this.favoriteBooks,
  //   required this.onDelete,
  // });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorites'),
      ),

      // body: ListView.builder(
      //   itemCount: favoriteBooks.length,
      //   itemBuilder: (context, index) {
      //     final book = favoriteBooks[index];
      //     return ListTile(
      //       leading: Image.asset(book.image, width: 50, height: 50, fit: BoxFit.cover),
      //       title: Text(book.title),
      //       trailing: IconButton(
      //         icon: Icon(Icons.delete, color: Colors.red),
      //         onPressed: () {
      //           onDelete(book); // Delete book from favorites
      //           Navigator.pop(context); // Return to the previous page
      //         },
      //       ),
      //       onTap: () {
      //         Navigator.push(
      //           context,
      //           MaterialPageRoute(
      //             builder: (context) => ReadPage(
      //               bookTitle: book.title,
      //               bookContent:
      //              book.content,
      //             ),
      //           ),
      //         );
      //       },
      //     );
      //   },
      // ),
    );
  }
}
