import 'package:flutter/material.dart';

class StacksPage extends StatelessWidget {
  const StacksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/paisaje.png"),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 15,
            top: 15,
            child: Card(
            elevation: 9,
            color: Colors.white.withOpacity(0.6),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: const [
                  Text(
                    "Bolivia",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsumLorem ipsumLorem ipsum",
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          ))
        ],
      ),
    );
  }
}
