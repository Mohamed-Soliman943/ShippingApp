import 'package:meta/meta.dart';
import 'package:shipping_app/data/services/carts_service.dart';
import 'package:bloc/bloc.dart';
import '../../constants/strings.dart';
import '../../data/models/order_element.dart';
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
  Future<void> searchCart() async{
    emit(CartsInitial());
    try{
      final cartDetails = await CartsService().searchCart(searchValue);
      emit(CartsSearch(cartDetails??OrderElement(id: 0, total: 0, discountedTotal: 0, totalProducts: 0, totalQuantity: 0)));
    }catch(e){emit(CartsError());}
  }
}
