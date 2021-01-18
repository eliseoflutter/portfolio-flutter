import 'package:flutter/material.dart';
import 'package:portfolio_app/src/pages/portfolio_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      home: PortfolioPage(),
    );
  }
}
