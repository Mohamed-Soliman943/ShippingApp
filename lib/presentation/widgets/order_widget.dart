import 'package:flutter/material.dart';

class OrderWidget extends StatelessWidget {
  const OrderWidget({
    super.key,
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
                Text('Order #'+'1234', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
                Text('Total products: '+'4', style: TextStyle(
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
