import 'package:meta/meta.dart';
import 'package:shipping_app/data/services/carts_service.dart';
import 'package:bloc/bloc.dart';
part 'carts_state.dart';

class CartsCubit extends Cubit<CartsState> {
  CartsCubit(this.cartsService) : super(CartsInitial());
  final CartsService cartsService;
  Future<void> getCart() async{
    emit(CartsLoading());
    try{
        final cartsList = await CartsService().getOrders();
        emit(CartsLoaded(cartsList!));

    }catch(e){
      emit(CartsError());
    }
  }
}
