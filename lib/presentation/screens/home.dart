import 'package:flutter/material.dart';
import 'package:shipping_app/Bussiness_logic/cubit/carts_cubit.dart';
import 'package:shipping_app/data/services/carts_service.dart';
import '../widgets/navigation/history_widget.dart';
import '../widgets/navigation/home_widget.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/navigation/track_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
  create: (context) => CartsCubit(CartsService())..getCart(),
  child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('ShippingApp',
        style: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,

        ),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add, size: 25,),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Color.fromRGBO(0, 57, 116, 100),
          backgroundColor: Colors.white,

          iconSize: 25,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined), label: 'Track'),
            BottomNavigationBarItem(icon: Icon(Icons.history_toggle_off), label: 'History'),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: 'Profile'),
          ]),
      body: HistoryWidget(),
      // TrackWidget(),
      // HomeWidget(),

    ),
);
  }
}

