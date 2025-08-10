import 'package:flutter/material.dart';

import '../../data/models/order_element.dart';

class OrderWidget extends StatelessWidget {
  final OrderElement orderElement;
  const OrderWidget({
    super.key, required this.orderElement,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(
              Icons.local_shipping_sharp,
              size: 40,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Order #UBS'+orderElement.id.toString(), style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                Text('Total products: '+orderElement.totalProducts.toString(), style: TextStyle(
                  fontSize: 18,
                  color:Color.fromRGBO(0, 57, 116, 100),
                ),),
              ],
            ),
          ),
        ]
    );
  }
}
