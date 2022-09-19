import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:totrs/screens/dataa.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
import 'package:totrs/screens/home/view.dart';

import '../../dataa.dart';
import '../../dataa.dart';
import '../details/view.dart';
class Scn extends StatefulWidget {
   //Scn({Key? key}) : super(key: key);
   final String restname ;
   final String rang;
   final String img;
   final String point;
   final String cash;
   final String epoin;
   final String decrption;
   final String user;
   final String comend ;
   final String meal1 ;
   final String meal2 ;



   Scn({
     required this.restname,
     required this.img,
     required this.rang,
     required this.decrption,
     required this.cash,
     required this.epoin,
     required this.point,
     required this.user,
     required this.comend,
     required this.meal1,
     required this.meal2,



   });
  @override
  State<Scn> createState() => _ScnState();
}
class _ScnState extends State<Scn> {
  get currentPage => null;
  var litems = ["1","2","Third"];
  var noteitems = ["1","2","Third"];
  var imitems = ["images/kkk.jpg","images/kntak.jpg","images/brkar.jpg","images/gelato.jpg","images/inshcof.jpg","images/lahm.jpg","images/dem.jpg","images/shagf.jpg","images/mora.jpg","images/mandi.jpg"];
  var rangitems = [];
  var pointitems = [];
  var cashitems = [];
  var namecommitems = [];
  var commentitems = [];
  var meal1items=[];
  var meal2items=[];
  var priceitems=[];
  var evaluationitems=[];
  var locationitems=[];
  Future getData() async{
    var url=Uri.parse("http://localhost:4000");
    Response response= await get(url);

    String body =response.body;

    List<dynamic> list1=json.decode(body);

    print(list1);
    litems.clear();  //to not print the items in litems just print value in mySql colum(name ,phone,..)
    noteitems.clear();
    //rangitems.clear();
    // pointitems.clear();
    // cashitems.clear();
    // rangitems.clear();

    for (int i=0; i<list1.length; i++){
      litems.add(list1[i]["r_name"]);
      noteitems.add(list1[i]["note"]);
      rangitems.add(list1[i]["rang"]);
      pointitems.add(list1[i]["point"]);
      cashitems.add(list1[i]["cash"]);
      namecommitems.add(list1[i]["namecom"]);
      commentitems.add(list1[i]["comment"]);
      meal1items.add(list1[i]["meal1"]);
      meal2items.add(list1[i]["meal2"]);
      priceitems.add(list1[i]["point"]);
      evaluationitems.add(list1[i]["evaluation"]);
      locationitems.add(list1[i]["r_location"]);



      setState(() {

      });
    }
    //print(imitems);//to print in my app
    print(list1);//to print my databace in run

  }
  void initState(){
    super.initState();
    getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:ListView(
        shrinkWrap: true,
        children: [
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          imgpage(widget.img,widget.rang),
          page(widget.restname,widget.decrption,
              widget.cash,widget.epoin,widget.point,widget.user,
              widget.comend,widget.img,widget.meal1,widget.meal2,
          ),

      ]
           ),
          /*
          ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount:litems.length,
              itemBuilder: (BuildContext context, int index){
                return
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                     // Box("images/deliver.jpg", meal1items[index]),
                      //Box("images/mndop.jpg", meal2items[index])

                    ],
                  );
              }


          )

           */
        ],
      ),

    );
  }

 Stack imgpage(String img,String rang){
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: 250,
          decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(img),
                fit: BoxFit.cover,
              )
          ),
        ),
        Positioned(
          right: 15, bottom: -25,
          child: Container(
            width: 100, height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(
                  blurRadius: 10,
                  spreadRadius: 2,
                )
                ]
            ),
            child: Center(
              child: Text(rang,style: TextStyle(fontSize: 17,color: Colors.black),),
            ),
          ),  ),
      ],

    );
 }
Container page(String  restname,String decrption ,String cash,String epoin, String poin,String user,String comend ,String img,String addres,String addres2){
    return  Container(
      child: Column(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.restname,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0,bottom: 8),
            child: Text(decrption,style: TextStyle(fontSize: 17,color: Colors.black,),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 25, width:130,
                  decoration: BoxDecoration(
                    color: Colors.deepOrange.shade100,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.restart_alt,color: Colors.deepOrange,),
                      Text(cash,style: TextStyle(fontSize: 13,color: Colors.deepOrange,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                SizedBox(width: 20,),
                Container(
                  height: 25, width:110,
                  decoration: BoxDecoration(
                    color: Color(0xffe7f1fa),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        Icon(Icons.add_circle_outline,color: Color(0xff2a90b5),),
                        Text(epoin,style: TextStyle(fontSize: 13,color: Color(0xff2a90b5),fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(poin,style: TextStyle(fontSize:40,color: Colors.black,fontWeight: FontWeight.bold),),
                Column(
                  children: [
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.star,color: Color(0xff00b795)) , Icon(Icons.star,color: Color(0xff00b795)) ,Icon(Icons.star,color: Color(0xff00b795)) ,Icon(Icons.star,color: Color(0xff00b795)) ,Icon(Icons.star,color: Color(0xffe6e7eb)) ,
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20),
                      child: Text("Based on 1200 ratings",style: TextStyle(fontSize:13,color: Color(0xffaeb3b5),),),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 2,
            color: Colors.grey.shade300,
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(children: [
              Text(user,style: TextStyle(fontSize:13,color: Colors.black,fontWeight: FontWeight.bold),),
              Icon(Icons.star,color: Color(0xff00b795),size: 20,) ,Icon(Icons.star,color: Color(0xff00b795),size: 20,) ,Icon(Icons.star,color: Color(0xff00b795),size: 20,) ,Icon(Icons.star,color: Color(0xff00b795),size: 20,) ,Icon(Icons.star,color: Color(0xff00b795),size: 20,) ,
            ],),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row( mainAxisAlignment: MainAxisAlignment.end,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(comend,style: TextStyle(fontSize:15,color: Colors.black54,fontWeight: FontWeight.bold),),
                    Text(" reed more",style: TextStyle(fontSize:15,color: Color(0xff00b795),fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 2,
            color: Colors.grey.shade300,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("الاطباق الشائعة",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsetsDirectional.all(15),
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white24,
                  boxShadow:[ BoxShadow(
                      blurRadius: 4, spreadRadius:4,color: Colors.black.withOpacity(0.1)

                  )
                  ]
              ),
              child:
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 8,bottom: 8),
                          child: Text(addres,style: TextStyle(fontSize: 20,color: Color(0xff00b692)),),
                        ),
                        Text("Get up to 50% off on these",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                        Text("selected restaurant",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),

                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage(img),
                    radius: 50,
                  ),
                  /*
          Container(
            height:100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                )
            ),
          ),

           */
                  Spacer(),
                  Icon(Icons.arrow_forward_ios,color:Color(0xff00b692),)
                ],
              ),

            ),
            onTap:  (){
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Details(restname: restname, img: img, price: price, evaluation: evaluation, location: location)));
            },
          ),
          Container(
            margin: EdgeInsetsDirectional.all(15),
            width: MediaQuery.of(context).size.width,
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white24,
                boxShadow:[ BoxShadow(
                    blurRadius: 4, spreadRadius:4,color: Colors.black.withOpacity(0.1)

                )
                ]
            ),
            child:
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8,bottom: 8),
                        child: Text(addres,style: TextStyle(fontSize: 20,color: Color(0xff00b692)),),
                      ),
                      Text("Get up to 50% off on these",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                      Text("selected restaurant",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),

                    ],
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(img),
                  radius: 50,
                ),
                /*
          Container(
            height:100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                )
            ),
          ),

           */
                Spacer(),
                Icon(Icons.arrow_forward_ios,color:Color(0xff00b692),)
              ],
            ),

          ),
          Container(
            margin: EdgeInsetsDirectional.all(15),
            width: MediaQuery.of(context).size.width,
            height: 120,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white24,
                boxShadow:[ BoxShadow(
                    blurRadius: 4, spreadRadius:4,color: Colors.black.withOpacity(0.1)

                )
                ]
            ),
            child:
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8,bottom: 8),
                        child: Text(addres2,style: TextStyle(fontSize: 20,color: Color(0xff00b692)),),
                      ),
                      Text("Get up to 50% off on these",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                      Text("selected restaurant",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),

                    ],
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                CircleAvatar(
                  backgroundImage: AssetImage(img),
                  radius: 50,
                ),
                /*
          Container(
            height:100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                )
            ),
          ),

           */
                Spacer(),
                Icon(Icons.arrow_forward_ios,color:Color(0xff00b692),)
              ],
            ),

          )
        ],
      ),
    );
}

  Container Box(String img,String addres, String addres2 ){
    return
      Container(
      margin: EdgeInsetsDirectional.all(15),
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white24,
          boxShadow:[ BoxShadow(
              blurRadius: 4, spreadRadius:4,color: Colors.black.withOpacity(0.1)

          )
          ]
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8),
                  child: Text(addres2,style: TextStyle(fontSize: 20,color: Color(0xff00b692)),),
                ),
                Text("Get up to 50% off on these",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                Text("selected restaurant",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),

              ],
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          CircleAvatar(
            backgroundImage: AssetImage(img),
            radius: 50,
          ),
          /*
          Container(
            height:100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                )
            ),
          ),

           */
          Spacer(),
          Icon(Icons.arrow_forward_ios,color:Color(0xff00b692),)
        ],
      ),
    );
  }
}
