import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var quoteList = [
    "Believe you can and you're halfway there. -Theodore Roosevelt",
    "The only way to do great work is to love what you do. -Steve Jobs",
    "The future depends on what you do today. -Mahatma Gandhi",
    "Don't watch the clock; do what it does. Keep going. -Sam Levinson",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(
          backgroundColor: Colors.blueGrey[600],
          title: const Text('Awesome Quotes'),
          centerTitle: true,
      ),
      body: Column(
        children: quoteList.map((quote) => Text(quote)).toList(),

      ),
    );
  }
}
