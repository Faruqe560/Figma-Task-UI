import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class APpBarScren extends StatelessWidget {
  const APpBarScren({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Faruqe  👋",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              Text(
                "Let's explore your notes",
                style: TextStyle(color: Colors.grey, fontSize: 17),
              )
            ],
          ),
          SizedBox(
            width: 100,
          ),
          Container(
            height: 60.0,
            width: 60.0,
            decoration: BoxDecoration(
              //color: Colors.green,
              borderRadius: BorderRadius.circular(50.0),
              border:
                  Border.all(color: Color.fromARGB(255, 91, 221, 95), width: 2),
              image: DecorationImage(
                  image: AssetImage("assets/images/faruqe.jpg"),
                  fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}
