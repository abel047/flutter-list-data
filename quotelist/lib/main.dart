import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quotecard.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: Quotes(),
  ));
}

class Quotes extends StatefulWidget {
  Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quote = [
    Quote(
        text: 'The purpose of our lives is to be happy', author: 'Dalai Lama'),
    Quote(text: 'Get busy living or get busy dying', author: 'John Lennon'),
    Quote(
        text: 'Life is what happens when youre busy making other plans',
        author: 'Stephen King'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quote
            .map((e) => quotecard(
                  q: e,
                  delete: () {
                    setState(() {
                      quote.remove(e);
                    });
                  },
                ))
            .toList(),
      ),
    );
  }
}
