import 'package:flutter/material.dart';
import 'package:shipping_app/Bussiness_logic/cubit/carts_cubit.dart';
import 'package:shipping_app/constants/strings.dart';
import 'package:shipping_app/data/services/carts_service.dart';
import '../../Bussiness_logic/cubit/search_cart_cubit.dart';
import '../widgets/navigation/history_widget.dart';
import '../widgets/navigation/home_widget.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/navigation/track_widget.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
  providers: [
    BlocProvider(
      create: (context) => SearchCartCubit(CartsService()),
    ),
    BlocProvider(
      create: (context) => CartsCubit(CartsService())..getCart(),
    ),
  ],
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
          onTap: (val){
            setState(() {
              selectedIndex = val;
            });
          },
          currentIndex: selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Color.fromRGBO(0, 57, 116, 100),
          backgroundColor: Colors.white,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
          ),
          selectedIconTheme: IconThemeData(
            color: Colors.black,
            size: 30,
          ),
          unselectedIconTheme: IconThemeData(
            color: Color.fromRGBO(0, 57, 116, 100),
            size: 25,
          ),

          iconSize: 25,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.location_on_outlined), label: 'Track'),
            BottomNavigationBarItem(icon: Icon(Icons.history_toggle_off), label: 'History'),
            BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined), label: 'Profile'),
          ]),
      body: navigationList[selectedIndex],

    ),
);
  }
}

