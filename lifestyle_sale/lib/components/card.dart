import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Card(
        child: Center(
          child: Image.asset('lifestyle_sale/assets/images/chair1.jpg',
              fit: BoxFit.fill),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        elevation: 5,
        color: Colors.white,
        margin: const EdgeInsets.all(10),
      ),
    );
  }
}
