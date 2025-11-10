import 'package:flutter/material.dart';
import 'package:spacez/core/constants/appcolors.dart';
import 'package:spacez/presentation/screens/home/homescreen.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 56,
      decoration: BoxDecoration(
        border: BoxBorder.fromLTRB(
          bottom: BorderSide(color: AppColors.appBarborderColor, width: 1),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap:() {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Homescreen(),
                        ),
                      );
                    },
              child: Row(
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
            ),
            Image.asset("assets/images/menu.png"),
          ],
        ),
      ),
    );
  }
}
