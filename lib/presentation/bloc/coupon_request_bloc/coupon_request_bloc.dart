import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'coupon_request_event.dart';
part 'coupon_request_state.dart';

class CouponRequestBloc extends Bloc<CouponRequestEvent, CouponRequestState> {
  CouponRequestBloc() : super(CouponRequestInitial()) {
    on<CouponRequestedEvent>((event, emit)async {
      try {
        emit(CouponRequestLoading());
        await Future.delayed(Duration(seconds: 1),(){
          emit(CouponRequestSuccess(price: event.toString()));
        });
      } catch (e) {
        emit(CouponRequestFailure(e.toString()));
      }
    });
  }
}
