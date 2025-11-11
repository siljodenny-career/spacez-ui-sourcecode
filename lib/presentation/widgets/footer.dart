import 'package:flutter/material.dart';
import 'package:spacez/presentation/screens/bookings/booked_screen.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,

      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 28,
            color: Color(0XFF316836),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/vector.png",
                  width: 15,
                ),
                SizedBox(width: 10),
                Text(
                  "Book now & Unlock exclusive rewards!",
                  style: TextStyle(
                    fontFamily: "semibold",
                    fontSize: 14,
                    fontWeight: FontWeight.w100,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,

            padding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 16.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "₹19,000",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  fontFamily: "price",
                                  decoration: TextDecoration.lineThrough,
                                  color: Color(0XFFB82B14),
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "₹16,000",
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: "price",
                                  color: Color(0XFF4B4E4B),
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "for 2 nights",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  fontFamily: "price",
                                  color: Color(0XFF7D817D),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "24 Apr - 26 Apr | 8 guests",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "semibold",
                                  color: Color(0XFF4B4E4B),
                                ),
                              ),
                              SizedBox(width: 5),
                              Image.asset(
                                "assets/images/edit_square.png",
                                width: 11,
                                color: Color(0XFF646864),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BookedScreen(),
                      ),
                    );
                  },
                
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0XFFC16B3E),
                
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(2),
                    ),
                  ),
                  child: Text(
                    "Reserve",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      fontFamily: "semibold",
                      color: Color(0XFFFFFFFF),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
