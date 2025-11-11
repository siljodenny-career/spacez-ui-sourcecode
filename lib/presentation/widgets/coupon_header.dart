import 'package:flutter/material.dart';

class CouponHeader extends StatelessWidget {
  const CouponHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 68,
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
        color: const Color.fromRGBO(75, 78, 75, 0.01),
        offset: const Offset(0, 17), // x=0, y=17 (bottom direction)
        blurRadius: 10,
      ),
      BoxShadow(
        color: const Color.fromRGBO(75, 78, 75, 0.05),
        offset: const Offset(0, 7),
        blurRadius: 7,
      ),
      BoxShadow(
        color: const Color.fromRGBO(75, 78, 75, 0.09),
        offset: const Offset(0, 2),
        blurRadius: 4,
      ),
        ],
      ),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 28,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_sharp),
            ),
            SizedBox(width: 16),
            Text(
              "Coupons",
              style: TextStyle(
                fontFamily: "semibold",
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Color(0XFF4B4E4B),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
