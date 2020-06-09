import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "List App",
    home: DailyQuote(),
    theme: ThemeData(
      fontFamily: "GreatVibes",
    ),
  ));
}

class DailyQuote extends StatefulWidget {
  @override
  _DailyQuoteState createState() => _DailyQuoteState();
}

class _DailyQuoteState extends State<DailyQuote> {
  List<Quote> quotes = [
    Quote(
        author: "Daisy William",
        text:
            "Whatever the mind of man can conceive and believe, it can achieve."),
    Quote(
        author: "Daisy William",
        text: "Strive not to be a success, but rather to be of value."),
    Quote(
        author: "Daisy William",
        text: "Strive not to be a success, but rather to be of value."),
    Quote(
        author: "Daisy William",
        text: "Strive not to be a success, but rather to be of value."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Best Quotes Application"),
        centerTitle: true,
        backgroundColor: Colors.blue[800],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: quotes.map((quote) => QuoteCard(quote: quote,)).toList(),
        ),
      ),
    );
  }
}


