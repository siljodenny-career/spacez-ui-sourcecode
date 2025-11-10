import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spacez/presentation/bloc/coupon_request_bloc/coupon_request_bloc.dart';
import 'package:spacez/presentation/widgets/couponcard.dart';

class CouponsListWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BlocProvider(
      create: (context) => CouponRequestBloc(),
      child: CouponsList(),
    );
  }
}

class CouponsList extends StatelessWidget {
  const CouponsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: SingleChildScrollView(
        child: Container(
          //color: Colors.amber,
          width: 393,

          child: Column(
            children: [
              Couponcard(
                price: '6900',
                stayType: 'LONGSTAY',
                offer:
                    '15% off when you book for 5 days or more and 20% off when you book for 30 days or more.',
              ),
              SizedBox(height: 10),
              Couponcard(
                price: '6500',
                stayType: 'SHORTSTAY',
                offer:
                    '10% off when you book for 5 days or more and 15% off when you book for 30 days or more.',
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text(
                      "Payment offers :",
                      style: TextStyle(
                        fontFamily: "semibold",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0XFF4B4E4B),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Couponcard(
                price: '6900',
                stayType: 'LONGSTAY',
                offer:
                    '15% off when you book for 5 days or more and 20% off when you book for 30 days or more.',
              ),
              SizedBox(height: 10),
              Couponcard(
                price: '6000',
                stayType: 'SHORTSTAY',
                offer:
                    '15% off when you book for 5 days or more and 20% off when you book for 30 days or more.',
              ),
              SizedBox(height: 10),
              Couponcard(
                price: '5500',
                stayType: 'SHORTSTAY',
                offer:
                    '15% off when you book for 5 days or more and 20% off when you book for 30 days or more.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
