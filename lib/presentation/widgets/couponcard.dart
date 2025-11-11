import 'package:flutter/material.dart';
import 'package:spacez/presentation/widgets/dottedborder.dart';

class Couponcard extends StatefulWidget {
  final String price;
  final String stayType;
  final String offer;
  const Couponcard({
    super.key,
    required this.price,
    required this.stayType,
    required this.offer,
  });

  @override
  State<Couponcard> createState() => _CouponcardState();
}

class _CouponcardState extends State<Couponcard> {
  bool appliedButton = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SizedBox(
        width: double.infinity,

        child: Row(
          children: [
            Container(
              width: 68,
              height: 184,
              color: Color(0XFFC16B3E),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 12.0,
                ),
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Center(
                    child: Text(
                      "₹${widget.price}",
                      style: TextStyle(
                        fontFamily: "boldtext",
                        fontWeight: FontWeight.w700,
                        fontSize: 32,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            CustomPaint(
              painter: LeftDashedBorderPainter(),
              child: Container(
                width: 277,
                height: 184,

                decoration: BoxDecoration(color: Color(0XFFFDF9F7)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 20.0,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 241,
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              widget.stayType,
                              style: TextStyle(
                                fontFamily: "semibold",
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                appliedButton
                                    ? Icon(Icons.check_circle,size: 18,)
                                    : Image.asset(
                                        "assets/images/shoppingmode.png",
                                        width: 18,
                                      ),
                                SizedBox(width: 3),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      appliedButton = !appliedButton;
                                    });
                                  },
                                  child: appliedButton
                                      ? Text(
                                          "Applied",
                                          style: TextStyle(
                                            color: Colors.green,
                                            fontFamily: "semibold",
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      : Text(
                                          "Apply",
                                          style: TextStyle(
                                            color: Color(0XFF874B2C),
                                            fontFamily: "semibold",
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 241,
                        height: 60,
                        child: Text(
                          widget.offer,
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "semibold",
                            fontWeight: FontWeight.w100,
                            color: Color(0XFF7D817D),
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Divider(
                        thickness: 1,
                        color: Color(0XFFE5E6E5),
                        endIndent: 10,
                      ),
                      SizedBox(
                        width: 80,
                        height: 28,
                        child: Text(
                          "Read more",
                          style: TextStyle(
                            color: Color(0XFF7D817D),
                            fontFamily: "semibold",
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
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
