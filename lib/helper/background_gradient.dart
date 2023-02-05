import 'package:flutter/material.dart';

class BackGroundGradient extends StatelessWidget {
  const BackGroundGradient({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .50,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.centerLeft,
            colors: [
              Color.fromARGB(222, 80, 123, 34),
              Color.fromARGB(222, 12, 59, 25)
            ]),
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 100.0, horizontal: 16.0),
      ),
    );
  }
}
