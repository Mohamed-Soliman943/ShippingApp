
import 'package:flutter/material.dart';

import '../../data/models/order_element.dart';
import 'order_widget.dart';

class HistoryList extends StatelessWidget {
  const HistoryList({
    super.key,
    required this.cartsList,
  });

  final List<dynamic> cartsList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: cartsList.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: OrderWidget(orderElement: cartsList[index]),
        );
      },);
  }
}
