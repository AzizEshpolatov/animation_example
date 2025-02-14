import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(backgroundColor: Colors.white),
      body: Center(
        child: GestureDetector(
          onTap: () => Navigator.of(context).pop(),
          child: Hero(
            tag: 'personImage',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(24),
              child: Image.asset(
                'assets/images/person.png',
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.height * 0.6,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
