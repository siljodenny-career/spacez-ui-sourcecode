import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:spacez/presentation/screens/home/homescreen.dart';
import 'package:spacez/presentation/widgets/appbar.dart';

class BookedScreen extends StatelessWidget {
  const BookedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppbarWidget(),
            Column(
              children: [
                Lottie.asset(
              "assets/images/booked-animation.json",
              width: 40,
              height:40,
              repeat: false,
              onLoaded: (composition) {
                // Optional: trigger navigation or callback after animation completes
              },
            ),
            SizedBox(height: 20),
            Text(
              "Your Hotel room reservation is done.",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w300,
                fontFamily: "semibold",
                color: Color(0XFF000000),
              ),
            )
              ],
            )
            ,
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Homescreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0XFFC16B3E),
        
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(2),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 16.0,
                  ),
                  child: Text(
                    "Home",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      fontFamily: "semibold",
                      color: Color(0XFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
