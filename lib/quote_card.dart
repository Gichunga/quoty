import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final VoidCallback delete;
  const QuoteCard({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
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
            const SizedBox(height: 10.0),
            TextButton.icon(
              onPressed: delete,
              label: Text('delete card'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
