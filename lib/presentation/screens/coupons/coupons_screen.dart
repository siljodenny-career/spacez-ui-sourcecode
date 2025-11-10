import 'package:flutter/material.dart';
import 'package:spacez/presentation/widgets/appbar.dart';
import 'package:spacez/presentation/widgets/coupon_header.dart';
import 'package:spacez/presentation/widgets/coupons_list.dart';
import 'package:spacez/presentation/widgets/footer.dart';

class CouponsScreen extends StatelessWidget {
  const CouponsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              AppbarWidget(),
              CouponHeader(),
              SizedBox(height: 10),
              CouponsList(),
              Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
