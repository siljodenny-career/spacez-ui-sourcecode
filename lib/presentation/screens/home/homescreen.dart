import 'package:flutter/material.dart';
import 'package:spacez/presentation/screens/coupons/coupons_screen.dart';
import 'package:spacez/presentation/widgets/appbar.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppbarWidget(),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/images/icon.png"),
                      SizedBox(width: 6),
                      Text(
                        "SPACEZ",
                        style: TextStyle(
                          fontFamily: "medium",
                          fontWeight: FontWeight.w500,
                          fontSize: 22,
                          foreground: Paint()
                            ..shader =
                                LinearGradient(
                                  colors: <Color>[
                                    Color(0XFF744025),
                                    Color(0XFF9A5632),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ).createShader(
                                  Rect.fromLTWH(0.0, 0.0, 200.0, 70.0),
                                ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CouponsScreen(),
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
                                "Coupons",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "semibold",
                                  color: Color(0XFFFFFFFF),
                                ),
                              ),
                            ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
