import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
  List<Quote> quoteList = [
    Quote(
        text: 'Be yourself; everyone else is already taken',
        author: 'Oscar Wilde'),
    Quote(
        text: 'I have nothing to declare except my genius',
        author: 'Oscar Wilde'),
    Quote(
        text: 'The truth is rarely pure and never simple',
        author: 'Oscar Wilde'),
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
        children: quoteList.map((quote) => QuoteCard(quote: quote)).toList(),
      ),
    );
  }
}
