import 'package:flutter/material.dart';

class CoffeTile extends StatelessWidget {
  const CoffeTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left : 25.0, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Colors.black54,

        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset('Assets/latte.jpg')),
          ],
        ),

        width: 200,

      ),
    );
  }
}
// Added
//sdasdasd