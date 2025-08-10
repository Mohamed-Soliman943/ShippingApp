import 'package:dio/dio.dart';
import '../models/order_element.dart';

class CartsService {
  final Dio dio = Dio();
  Future<List<OrderElement>?> getOrders() async {
    Uri url= Uri.parse('https://dummyjson.com/carts');
    try{
      Response response = await dio.get(url.toString());
      List<OrderElement> savedCarts = [];
      if(response.statusCode == 200){
        List<dynamic> carts = response.data['carts'];
        for(var cart in carts){
          OrderElement orderElement = OrderElement(
              id: cart['id'],
              total: cart['total'],
              discountedTotal: cart['discountedTotal'],
              totalProducts: cart['totalProducts'],
              totalQuantity: cart['totalQuantity']);
          savedCarts.add(orderElement);
        }
        return savedCarts;
      }
    }catch(e){print(e.toString());}
  }
}