// import 'package:flutter/material.dart';
//
// class BookPage extends StatefulWidget {
//   const BookPage({super.key});
//
//   @override
//   State<BookPage> createState() => _BookPageState();
// }
//
// class _BookPageState extends State<BookPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child: Column(
//         children: [
//           // for the category title
//           Padding(
//             padding: const EdgeInsets.only(left: 0),
//             child: Text(
//               'Dark Romance',
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.red,
//               ),
//             ),
//           ),
//
//           SizedBox(
//             height: 5,
//           ),
//
//           Expanded(
//             child: ListView.builder(
//               itemCount: 4,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding:
//                       const EdgeInsets.only(top: 25.0, bottom: 10, left: 25),
//                   child: SizedBox(
//                     height: 50,
//                     width: 300,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.grey[800],
//                         // color: Colors.red[100],
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(bottom: 1),
//                             child: Image.asset('lib/images/6.jpeg', width: 300, height: 150, fit: BoxFit.cover,),
//                           ),
//
//                           // title
//                           Text(
//                             'I love you',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: 12,
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//
//                           // description
//
//                           Text(
//                             'She met a dangerous man and fell in love...',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: 10,
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//
//           Padding(
//             padding: const EdgeInsets.only(left: 0),
//             child: Text(
//               'Programming',
//               textAlign: TextAlign.start,
//               style: TextStyle(
//                 fontSize: 24,
//                 fontWeight: FontWeight.w600,
//                 color: Colors.green,
//
//               ),
//             ),
//           ),
//           Expanded(
//             child: ListView.builder(
//               itemCount: 4,
//               scrollDirection: Axis.horizontal,
//               itemBuilder: (context, index) {
//                 return Padding(
//                   padding:
//                       const EdgeInsets.only(top: 25.0, bottom: 10, left: 25),
//                   child: SizedBox(
//                     height: 50,
//                     width: 300,
//                     child: Container(
//                       decoration: BoxDecoration(
//                         color: Colors.grey[800],
//                         // color: Colors.red[100],
//                         borderRadius: BorderRadius.circular(12),
//                       ),
//                       child: Column(
//                         children: [
//                           Padding(
//                             padding: EdgeInsets.only(bottom: 1),
//                             child: Image.asset('lib/images/2.jpeg', width: 300, height: 150, fit: BoxFit.cover,),
//                           ),
//
//                           // title
//                           Text(
//                             'I love you',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: 12,
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//
//                           // description
//
//                           Text(
//                             'She met a dangerous man and fell in love...',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               fontSize: 10,
//                               color: Colors.black,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:influence_library/pages/favorites_page.dart';
import 'package:influence_library/pages/read_page.dart';
// import 'package:influence_library/pages/book_page.dart';


class Book {
  final String title;
  final String description;
  final String image;
  final String content;

  Book({
    required this.title,
    required this.description,
    required this.image,
    required this.content,
  });
}

class BookPage extends StatefulWidget {
  const BookPage({super.key});

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  // list of books for each category
  final List<Book> darkRomanceBooks = [
    Book(
      title: 'I love you',
      description: 'She met a dangerous man and fell in love...',
      content:
          'Love is a profound and multifaceted emotion that transcends time \n\n, '
          'space, and circumstance. '
          'It is the bond that connects people on a deep emotional level,'
          ' fostering compassion, understanding, '
          'and shared joy. Love can be romantic, familial, or even platonic, '
          'yet it holds the power to heal, uplift, and inspire.\n\n'
          ' It requires patience, trust, and selflessness, thriving '
          'on mutual respect and communication. \n\n At its core, '
          'love is about acceptance—embracing someone fully for who '
          'they are, flaws and all. Whether its through small gestures or '
          'grand acts, love continues to be one of the most significant '
          'forces in human experience.',
      image: 'lib/images/6.jpeg',
    ),
    Book(
      title: 'Dangerous Love',
      description: 'A love story between two rivals...',
      content: '',
      image: 'lib/images/2.jpeg',
    ),
    Book(
      title: 'Heart of Darkness',
      description: 'A tale of romance in troubled times...',
      content: '',
      image: 'lib/images/1.jpeg',
    ),
    Book(
      title: 'Forbidden Romance',
      description: 'A love story that breaks all the rules...',
      content: '',
      image: 'lib/images/3.jpeg',
    ),
  ];

  final List<Book> programmingBooks = [
    Book(
      title: 'Learning Flutter',
      description: 'Master Mobile app development with Flutter...',
      content: '',
      image: 'lib/images/getcertified.jpg',
    ),
    Book(
      title: 'Dart programming',
      description: 'A comprehensive guide to Dart programming...',
      content: '',
      image: 'lib/images/6.jpeg',
    ),
    Book(
      title: 'JavaScript Essentials',
      description: 'Learn JavaScript from scratch...',
      content: '',
      image: 'lib/images/6.jpeg',
    ),
    Book(
      title: 'React Native in Action',
      description: 'Build cross-platform apps with React Native...',
      content: '',
      image: 'lib/images/6.jpeg',
    ),
  ];

  // List to store favorite books
  // List<Book> favoriteBooks = [];

  // function to add books to favorite
  // void addFavoriteBooks(Book book) {
  //   setState(() {
  //     favoriteBooks.add(book);
  //   });
  // }

  // Navigate to the favorite_page
  // void goTOFavoritePage() {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => FavoritesPage(
  //           favoriteBooks: favoriteBooks,
  //           onDelete: (Book book) {
  //             setState(() {
  //               favoriteBooks.remove(book); //remove from favorites
  //             });
  //           }),
  //     ),
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // shadowColor: Colors.red,
        title: Text(
          'Book Categories',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        // actions: [
        //   IconButton(
        //     icon: Icon(Icons.favorite),
        //     onPressed: goToFavoritesPage, // Navigate to favorites
        //   ),
        // ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Dark Romance Category
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 10),
              child: Text(
                'Dark Romance',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
              ),
            ),

            SizedBox(height: 5),

            SizedBox(
              height: 390, // Increased height for the box
              child: ListView.builder(
                itemCount: darkRomanceBooks
                    .length, //use the length of the darkRomanceBooks list
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final Book book = darkRomanceBooks[index];
                  return Padding(
                    padding:
                    const EdgeInsets.only(top: 25.0, bottom: 10, left: 25),
                    child: SizedBox(
                      width: 300,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 1),
                              child: Image.asset(
                                book.image,
                                width: 300,
                                height: 200, // Increased image height
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Title
                            Text(
                              book.title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.red[300],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Description
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                book.description,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.red[200],
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),

                            // Buttons: Read & Add to Favourite
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      // Read button action
                                      //   navigate to read_page when read button is clicked
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ReadPage(
                                            bookTitle: book.title,
                                            bookContent: book.content,
                                            image: book.image,
                                          ),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                    ),
                                    child: Text(
                                      'Read',
                                      style: TextStyle(
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Add to Favourite button action
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                    ),
                                    child: Text(
                                      'Add to Favourite',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Programming Category
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 20),
              child: Text(
                'Programming',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.green,
                ),
              ),
            ),

            SizedBox(height: 5),

            SizedBox(
              height: 380, // Increased height for the box
              child: ListView.builder(
                itemCount: programmingBooks.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final Book book = programmingBooks[index];
                  return Padding(
                    padding:
                    const EdgeInsets.only(top: 25.0, bottom: 10, left: 25),
                    child: SizedBox(
                      width: 300,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[800],
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 1),
                              child: Image.asset(
                                book.image,
                                width: 300,
                                height: 200, // Increased image height
                                fit: BoxFit.cover,
                              ),
                            ),
                            // Title
                            Text(
                              book.title,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.green[300],
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            // Description
                            Padding(
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                book.description,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.green[200],
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),

                            // Buttons: Read & Add to Favourite
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceEvenly,
                                children: [
                                  ElevatedButton(
                                    onPressed: () {
                                      // Read button action
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => ReadPage(
                                            bookTitle: book.title,
                                            bookContent: book.content,
                                            image: book.image,
                                          ),
                                        ),
                                      );
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.black,
                                    ),
                                    child: Text(
                                      'Read',
                                      style: TextStyle(
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      // Add to Favourite button action
                                    },
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.green,
                                    ),
                                    child: Text(
                                      'Add to Favourite',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // Add more categories below as needed
          ],
        ),
      ),
    );
  }

//   Function to build the book card
//   Widget buildBookCard(Book book) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 25.0, bottom: 10, left: 25),
//       child: SizedBox(
//         width: 300,
//         child: Container(
//           decoration: BoxDecoration(
//             color: Colors.grey[800],
//             borderRadius: BorderRadius.circular(12),
//           ),
//           child: Column(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(bottom: 1),
//                 child: Image.asset(
//                   book.image,
//                   width: 300,
//                   height: 200, // Increased image height
//                   fit: BoxFit.cover,
//                 ),
//               ),
//               // Title
//               Text(
//                 book.title,
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 20,
//                   color: Colors.red[300],
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               // Description
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                 child: Text(
//                   book.description,
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 15,
//                     color: Colors.red[200],
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ),
//               ),
//
//               // Buttons: Read & Add to Favourite
//               Padding(
//                 padding: const EdgeInsets.only(top: 8.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         // Read button action
//                         //   navigate to read_page when read button is clicked
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) => ReadPage(
//                               bookTitle: book.title,
//                               bookContent: book.content,
//                               image: book.image,
//                             ),
//                           ),
//                         );
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.black,
//                       ),
//                       child: Text(
//                         'Read',
//                         style: TextStyle(
//                           color: Colors.red,
//                         ),
//                       ),
//                     ),
//                     ElevatedButton(
//                       onPressed: () {
//                         // Add to Favourite button action
//                         addToFavorites(book); // Add to favorite
//                       },
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.red,
//                       ),
//                       child: Text(
//                         'Add to Favourite',
//                         style: TextStyle(
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );


  }
// }
