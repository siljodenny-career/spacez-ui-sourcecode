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
            
            color: Color.fromARGB(255, 226, 228, 226), // Shadow color
            spreadRadius: 0, // How wide the shadow spreads
            blurRadius: 2, // How soft the shadow looks
            offset: Offset(0, 3), // 👈 X=0 (no side), Y=4 (shadow below)
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
