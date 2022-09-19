import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../dataa.dart';
import '../scn/view.dart';
class Rearantapi extends StatefulWidget {
  const Rearantapi({Key? key}) : super(key: key);

  @override
  State<Rearantapi> createState() => _RearantapiState();
}

class _RearantapiState extends State<Rearantapi> {
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount:litems.length,
            itemBuilder: (BuildContext context, int index){
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            GestureDetector(
                child:rrow(litems[index], "\$ٌ\$ وجبة",pointitems[index],"اكسب نقاط",imitems[index]),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Scn(restname: litems[index], img: imitems[index], rang: rangitems[index], decrption: noteitems[index], cash: cashitems[index], epoin: epoin, point: pointitems[index], user: namecommitems[index], comend: commentitems[index],meal1: meal1items[index],meal2: meal2items[index],)));
                }
            ),
            /*
            GestureDetector(
              child:rrow("Cookers", "\$ٌ\$وفطور","4.9","اكسب نقاط","images/kntak.jpg") ,
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Scn(restname: restname3, img: img3, rang: rang3, decrption: decrption3, cash: cash3, epoin: epoin3, point: point3, user: user3, comend: comend3)));
              },
            ),
            GestureDetector(
              child: rrow("كاهي فيروز", "\$ٌ\$وفطور","4.9","اكسب نقاط","images/brkar.jpg"),
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Scn(restname: restname, img: img, rang: rang, decrption: decrption, cash: cash, epoin: epoin, point: point, user: user, comend: comend)));
              },
            ),

             */
          ],
          );
    }
        ),
      ),
    );
  }
  Container rrow(String name, String name2,String x,String x1,String mimg) {
    return Container(
      margin: EdgeInsetsDirectional.all(15),
      width: 350,
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 350, height: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(mimg),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Positioned(
                left: 20, top: 20,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.favorite_border_outlined, color: Colors.white,),
                    SizedBox(height: 80,),
                    Container(
                      width: 40, height:40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.white24,
                              blurRadius: 20, spreadRadius: 20, offset: Offset(0,10)
                          )
                        ],
                        color: Colors.white,
                      ),

                      child: Column(
                        children: [
                          Text("1",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                          Text("س"),

                        ],
                      ),

                    )
                  ],
                ),),
            ],
          ),
          Column(
            children: [
              Text(name,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight:FontWeight.bold),),
              Text(name2,style: TextStyle(fontSize: 15,color: Colors.black),),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color:Colors.grey.shade200,
                  ),

                  width: 100, height: 40,
                  child:
                  Center(
                    child: Row(
                      children: [
                        Text(x1,style: TextStyle(fontSize: 15,color:Color(0xff00b692)),),
                        Icon(Icons.star,color: Color(0xff00b692),),
                      ],
                    ),
                  ),

                ),
                SizedBox(width: 20,),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color:Colors.grey.shade200,
                  ),

                  width: 50, height: 40,
                  child:
                  Center(
                    child: Row(
                      children: [
                        Text(x),
                        Icon(Icons.star,color: Color(0xff00b692),),
                      ],
                    ),
                  ),

                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}
