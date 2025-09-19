import 'package:flutter/material.dart';
import 'package:portfolio_miguel_belotto/extensions/utils.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.width * 0.82,
      height: context.height,
      color: Colors.pink,
      child: Container(
        alignment: Alignment.center,
        color: Colors.red,
      ),
    );
  }
}
