import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "List App",
    home: DailyQuote(),
  ));
}

class DailyQuote extends StatefulWidget {
  @override
  _DailyQuotetate createState() => _DailyQuotetate();
}

class _DailyQuotetate extends State<DailyQuote> {
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
    Quote(
        author: "Daisy William",
        text: "Strive not to be a success, but rather to be of value."),
    Quote(
        author: "Daisy William",
        text: "Strive not to be a success, but rather to be of value."),
  ];

  Widget quoteTemplate(quote) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(color: Colors.grey[600], fontSize: 18.0),
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(quote.author,
                style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 18.0,
                )),
          ],
        ),
      ),
    );
  }

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
          children: quotes.map((quote) => quoteTemplate(quote)).toList(),
        ),
      ),
    );
  }
}
