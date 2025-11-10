part of 'coupon_request_bloc.dart';

@immutable
sealed class CouponRequestState {}

final class CouponRequestInitial extends CouponRequestState {}

final class CouponRequestLoading extends CouponRequestState {}

final class CouponRequestFailure extends CouponRequestState {
  final String? msg;

  CouponRequestFailure(this.msg);
}

final class CouponRequestSuccess extends CouponRequestState {
  final String price;

  CouponRequestSuccess({required this.price});
}
