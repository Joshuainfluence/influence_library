import 'package:flutter/material.dart';

class ReadPage extends StatelessWidget {
  final String bookTitle;
  final String bookContent;
  final String image;
  const ReadPage(
      {Key? key,
      required this.bookTitle,
      required this.bookContent,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          bookTitle + ' --INFLUENCE',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.red,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // child: Text(
              //   bookContent,
              //   style: TextStyle(fontSize: 18, color: Colors.white ),
              // ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Image.asset(
                  image,
                  width: 400,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Column(
                  children: [
                    Text(bookContent, style: TextStyle(color: Colors.red[200], fontWeight: FontWeight.w400, fontSize: 20,),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
