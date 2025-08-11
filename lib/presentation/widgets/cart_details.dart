
import 'package:flutter/material.dart';
import 'package:shipping_app/data/models/order_element.dart';

class CartDetails extends StatelessWidget {
  final OrderElement orderElement;
  const CartDetails({
    super.key, required this.orderElement,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Row(
            children: [
              Text('Cart ID: ',
                style: TextStyle(
                  fontSize:24,
                  fontWeight: FontWeight.bold,
                ),),
              Text('#UBS'+orderElement.id.toString(),
                style: TextStyle(
                  fontSize:20,
                  color: Color.fromRGBO(0, 57, 116, 1),
                ),),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('Total: ',
                style: TextStyle(
                  fontSize:24,
                  fontWeight: FontWeight.bold,
                ),),
              Text(orderElement.total.toString(),
                style: TextStyle(
                  fontSize:20,
                  color: Color.fromRGBO(0, 57, 116, 1),
                ),),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('Discounted Total',
                style: TextStyle(
                  fontSize:24,
                  fontWeight: FontWeight.bold,
                ),),
              Text(orderElement.discountedTotal.toString(),
                style: TextStyle(
                  fontSize:20,
                  color: Color.fromRGBO(0, 57, 116, 1),
                ),),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('Total Products: ',
                style: TextStyle(
                  fontSize:24,
                  fontWeight: FontWeight.bold,
                ),),
              Text(orderElement.totalProducts.toString(),
                style: TextStyle(
                  fontSize:20,
                  color: Color.fromRGBO(0, 57, 116, 1),
                ),),
            ],
          ),
          SizedBox(height: 20,),
          Row(
            children: [
              Text('Total Quantity: ',
                style: TextStyle(
                  fontSize:24,
                  fontWeight: FontWeight.bold,
                ),),
              Text(orderElement.totalQuantity.toString(),
                style: TextStyle(
                  fontSize:20,
                  color: Color.fromRGBO(0, 57, 116, 1),
                ),),
            ],
          ),
          SizedBox(height: 20,),


        ]

    );
  }
}
