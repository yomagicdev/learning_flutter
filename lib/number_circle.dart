

import 'package:flutter/material.dart';

class NumberCircle extends StatelessWidget {

  const NumberCircle({
    super.key,
    required this.number,
  });

  final String number;

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue, // Replace with the correct color
      ),
      child: Text(
        number,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 20,
        ),
      ),
    );
  }
}