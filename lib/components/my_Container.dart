import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
              child: Image.asset(
            'assets/images/the best.jpg',
            fit: BoxFit.cover,
          )),
          Expanded(
              child: Container(
            child: const Text(
              'child',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ))
        ],
      ),
    );
  }
}
