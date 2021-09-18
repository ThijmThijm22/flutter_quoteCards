import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

  late Quote quote;
  late Function() delete;

  QuoteCard({required this.quote, required this.delete });

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[

              Text(
                quote.text,
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.grey[600],
                ),
              ),

              SizedBox(height: 6.0),

              Text(
                quote.author,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800],
                ),
              ),

              SizedBox(height: 8),

              TextButton.icon(
                onPressed: delete,
                label: Text(
                  'delete quote',
                  style: TextStyle(
                    color: Colors.black,
                  )
                ),
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                ),
                
              )
            ],
          ),
        )
    );
  }
}