import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shipping_app/data/models/order_element.dart';

import '../../../Bussiness_logic/cubit/carts_cubit.dart';
import '../../../constants/strings.dart';
import '../cart_details.dart';

class TrackWidget extends StatelessWidget {
  TrackWidget({super.key});

  dynamic searchController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 57, 116, 0.3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
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
                SizedBox(height: 20,),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromRGBO(0, 57, 116, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    searchValue = searchController.text;
                    context.read<CartsCubit>().searchCart();
                  },
                  child: Text('Track', style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),),
                ),
                SizedBox(height: 20,),
              ],
            ),
            Image.network(
              'https://static.vecteezy.com/system/resources/previews/026/160/478/non_2x/fast-shipping-delivery-truck-icon-for-apps-and-websites-truck-icon-vector.jpg',
            ),
            BlocBuilder<CartsCubit, CartsState>(
              builder: (context, state) {
                if(state is CartsLoading){
                  return Center(child: CircularProgressIndicator(),);
                }
                if(state is CartsError){
                  return Center(child: Text('Error'),);
                }
                if(state is CartsSearch){
                  return CartDetails(orderElement: state.orderElement,);
                }
                if(state is CartsInitial){return Container();}
                return Container();

              },
            ),
          ],
        ),
      ),
    );
  }
}
