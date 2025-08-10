
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../Bussiness_logic/cubit/carts_cubit.dart';
import '../../../data/models/order_element.dart';
import '../order_widget.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromRGBO(0, 57, 116, 100),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Welcome Back,',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(0, 57, 116, 1),
                            ),
                            onPressed: (){},
                            child: Text('New Order',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                            ),)),
                      ],

                    ),
                  ),
                  Expanded(
                      child: Image.network('https://cdn-icons-png.flaticon.com/512/10351/10351790.png',)),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Text('Current shipments',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                BlocBuilder<CartsCubit, CartsState>(
                  builder: (context, state) {
                    if(state is CartsLoading){
                      return Center(child: CircularProgressIndicator(),);
                    }
                    if(state is CartsError){
                      return Center(child: Text('Error'),);
                    }
                    if(state is CartsLoaded){return OrderWidget(orderElement: state.cartsList[0], );}
                    return Container();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.only(top:20,bottom: 20.0),
                  child: Text('Notifications',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),),
                ),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.center,

                    children: [
                      Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          Icons.doorbell_rounded,
                          size: 40,
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Shipment Updates', style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text('Get all updates about your shipment from here',
                                overflow: TextOverflow.visible,
                                maxLines: 2,
                                style: TextStyle(
                                  fontSize: 18,
                                  color:Color.fromRGBO(0, 57, 116, 100),
                                ),),
                            ],
                          ),
                        ),
                      ),
                      Icon(Icons.arrow_forward_ios_sharp),
                    ]
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

