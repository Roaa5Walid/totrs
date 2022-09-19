import 'package:flutter/material.dart';
class MyDemo extends StatelessWidget {
  final List<Tab> myTabs = <Tab>[
    Tab(text: 'Past Orders',),
    Tab(text: 'Upcoming' ,),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: TabBar(
            tabs: myTabs,
            indicatorColor: Color(0xff00b692),
            labelColor: Color(0xff00b692),
          ),
        ),
        body: TabBarView(
          children: myTabs.map((Tab tab,) {
            Colors.black;
            //final String label = tab.text.toLowerCase();
            return Center(
              child: Text(
                'you do not have any past orders',
                style: const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}