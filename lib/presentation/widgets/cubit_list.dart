import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shipping_app/presentation/widgets/order_widget.dart';

import '../../Bussiness_logic/cubit/carts_cubit.dart';
import '../../constants/strings.dart';
import 'cart_details.dart';
import 'history_List.dart';

class CubitList extends StatelessWidget {
  const CubitList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CartsCubit, CartsState>(
      builder: (context, state) {
        if(state is CartsLoading){
          return Center(child: CircularProgressIndicator(),);
        }
        if(state is CartsError){
          return Center(child: Text('Error'),);
        }
        if(state is CartsLoaded){
          return HistoryList(cartsList: state.cartsList,);
        }

        return Container();
      },
    );
  }
}
