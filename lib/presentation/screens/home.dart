import 'package:flutter/material.dart';

import '../widgets/order_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Text('Current shipments',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),),
            ),
            OrderWidget(),
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
    );
  }
}

