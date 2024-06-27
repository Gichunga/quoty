import 'package:flutter/material.dart';
import 'quote.dart';

void main() {
  runApp(const MaterialApp(
    home: QuoteList(),
  ));
}

class QuoteList extends StatefulWidget {
  const QuoteList({super.key});

  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote('Be yourself; everyone else is already taken', 'Oscar Wilde'),
    Quote('I have nothing to declare except my genius', 'Steve M'),
    Quote('The truth is rarely pure and simple', 'Denis M'),
  ];

  Widget quoteTemplate(quote){
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                quote.text,
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 10.0),
              Text(
                quote.author,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 18.0,
                ),
              ),
            ],
          ),
        ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
        elevation: 0.0,
        titleTextStyle: const TextStyle(
          color: Colors.white,
        ),
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      ),
    );
  }
}
