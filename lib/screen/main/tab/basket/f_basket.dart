import 'package:flutter/material.dart';

class BasketFragment extends StatefulWidget {
  const BasketFragment({super.key});

  @override
  State<BasketFragment> createState() => _BasketFragmentState();
}

class _BasketFragmentState extends State<BasketFragment> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: const Placeholder(),
    );
  }
}

