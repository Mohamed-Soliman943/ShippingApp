import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shipping_app/Bussiness_logic/cubit/carts_cubit.dart';
import 'package:shipping_app/data/models/order_element.dart';
import 'package:shipping_app/presentation/widgets/order_widget.dart';

import '../../../constants/strings.dart';
import '../cubit_list.dart';
import '../history_List.dart';

class HistoryWidget extends StatelessWidget {
  HistoryWidget({super.key});
  final searchController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(0, 57, 116, 0.3),
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextField(
              onChanged: (value){
                searchValue = value;
                context.read<CartsCubit>().getCart();
              },
              controller: searchController,
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(
                  color: Color.fromRGBO(0, 57, 116, 0.6),
                ),
                fillColor: Color.fromRGBO(0, 57, 116, 100),
                prefixIcon: Icon(
                  Icons.search, color: Color.fromRGBO(0, 57, 116, 0.6),),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),

            ),
          ),
        ),
        Expanded(
          child:CubitList(),
        ),
      ],
    );
  }
}

