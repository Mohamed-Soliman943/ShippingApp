import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../constants/strings.dart';
import '../../data/models/order_element.dart';
import '../../data/services/carts_service.dart';

part 'search_cart_state.dart';

class SearchCartCubit extends Cubit<SearchCartState> {
  SearchCartCubit(CartsService cartsService) : super(SearchCartInitial());
  Future<void> searchCart() async{
    emit(SearchCartInitial());
    try{
      emit(SearchCartLoading());
      final cartDetails = await CartsService().searchCart(searchValue);
      emit(SearchCartLoaded(cartDetails??OrderElement(id: 0, total: 0, discountedTotal: 0, totalProducts: 0, totalQuantity: 0)));
    }catch(e){emit(SearchCartError());}
  }
}
