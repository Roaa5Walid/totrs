import 'package:flutter/material.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:totrs/screens/home/view.dart';
class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  get currentPage => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child:ListView(
          children: [
               Container(
                 height: 35,
                 width: MediaQuery.of(context).size.width,
                 child: Row(
                   children: [
                     Icon(Icons.search),
                     Text("Search for ",style: TextStyle(fontSize: 15),)
                   ],
                 ),
               ),
            Container(
              height: 100,   width: MediaQuery.of(context).size.width,
              color: Color(0xff00b692),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/deliver.jpg"),
                    radius: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Ordar Anything! ",style: TextStyle(fontSize: 20,color: Colors.white),),
                      Text("New on Toters if it first on a ",style: TextStyle(fontSize: 15,color: Colors.white),),
                      Text("motor we can deliver it ",style: TextStyle(fontSize: 15,color: Colors.white),),
                    ],
                  ),
                  Icon(Icons.arrow_forward_ios,color: Colors.white,)
                ],
              ),

            ),

            Container(
              margin: EdgeInsetsDirectional.all(20),
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Row(
                children: [
                  Container(
                    height: 90,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage("images/raseed.png"),
                            fit: BoxFit.cover,
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Happy Hour! ",style: TextStyle(fontSize: 20,color: Colors.black),),
                        Text("New on Toters if it first on a ",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                        Text("motor we can deliver it ",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                        Text("28 stoes ",style: TextStyle(fontSize: 15,color: Colors.green.shade700),),

                      ],
                    ),
                  ),
                ],
              ),
            ),
            Box("images/kntak.jpg","Weekly Discounts","26 Stores"),
            Box("images/kntak.jpg","Weekly Discounts","26 Stores"),
            Box("images/brkar.jpg","Cashback","26 Stores"),

          ],
        ) ,
      ),
        /*
        bottomNavigationBar: CircleBottomNavigationBar(
          initialSelection: currentPage,
          circleColor: Colors.purple,
          activeIconColor: Colors.white,
          inactiveIconColor: Colors.black87,
          tabs: [
            TabData(
              icon: Icons.home_outlined,
              iconSize: 25,
              onClick: (){
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>Home()));

              },
              // Optional
            ),

            TabData(icon: Icons.search,
              onClick: (){

              },
            ),
            TabData(icon: Icons.delivery_dining),
            TabData(icon: Icons.favorite_border_outlined),
            TabData(
              icon: Icons.person,
              onClick: (){
              },

            ),
          ],
          onTabChangedListener: (int position) {  },

        )
*/
    );
  }
  Container Box(String img,String addres,  String Stor){
    return Container(
      margin: EdgeInsetsDirectional.all(20),
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Row(
        children: [
          Container(
            height: 90,
            width: 150,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(addres,style: TextStyle(fontSize: 20,color: Colors.black),),
                Text("Get up to 50% off on these",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                Text("selected restaurant",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                Text(Stor,style: TextStyle(fontSize: 15,color: Colors.green.shade700),),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
