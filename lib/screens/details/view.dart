import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:totrs/screens/home/view.dart';


class Details extends StatefulWidget {
 // const Details({Key? key}) : super(key: key);

  final String restname ;
  final String img;
  //final String meal1 ;
  //final String meal2 ;
  final String price ;
  final String evaluation;
  final String location ;

  Details({
    required this.restname,
    required this.img,
   // required this.meal1,
    //required this.meal2,
    required this.price,
    required this.evaluation,
    required this.location,

  });



  @override
  State<Details> createState() => _DetailsState();
}

int sum= 0;
var count = 0;
increment(){
  count++;
  sum = 6500*count;
}
class _DetailsState extends State<Details> {
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
      backgroundColor: Color(0xff00aa90),
      body:ListView.builder(
      scrollDirection: Axis.vertical,
    shrinkWrap: true,
    itemCount:litems.length,
    itemBuilder: (BuildContext context, int index){
    return Column(
      children: [
        Stack(
          children: [
            Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(

                ),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage:AssetImage(imitems[index]),
                      radius: 100,
                    ),

                  ],
                )

            ),
            Positioned(
              right: 20, top: 10,
              child:GestureDetector(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Home()));
                },
                child: Container(
                    width: 40, height: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.white,
                    ),
                    child: Icon(Icons.arrow_forward_outlined,)),
              ), ),



          ],
        ),

        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(litems[index],style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xffff4349)),),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Text(evaluationitems[index],style: TextStyle(fontSize: 20,color: Colors.black),),
                      Icon(Icons.tag_faces_outlined),
                      SizedBox(width: 40,),
                      Text("سعر التوصيل: 1500",style: TextStyle(fontSize: 20,color: Colors.black),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.delivery_dining),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      Text("الحد الادنى لطلب:5000د.ع",style: TextStyle(fontSize: 20,color: Colors.black),),
                      Icon(Icons.circle_outlined),
                      SizedBox(width: 130,),
                      Text(locationitems[index],style: TextStyle(fontSize: 20,color: Colors.black),),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(Icons.location_on_outlined),
                      ),
                    ],
                  ),
                ),


                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("وقت اتوصيل المتوقع من نصف ساعة ال ساعة",style: TextStyle(fontSize: 20,color: Colors.black),),
                      Icon(Icons.lock_clock),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(meal1items[index],style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xffff4349)),),
                ),

                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    height: 80, width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.withOpacity(0.3),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.keyboard_arrow_up,size: 30,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Column(
                            children: [
                              Text("اضافات",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xffff4349)),),
                              Text("اختياري",style: TextStyle(fontSize: 15,color: Colors.grey),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 20),
                  child: Text("تعليمات خاصة",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20),
                  child: Container(
                    height: 40, width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.grey.withOpacity(0.3),
                    ),

                    child:Padding(
                      padding: const EdgeInsets.only(left: 10,top: 5,bottom: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text("ااذا كانت لديك اي ملاحضات حول اطلب يرجى الكتابة",style: TextStyle(fontSize: 15,color: Colors.grey),),
                        ],
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if(count>0)
                            count--;
                          sum = 6500*count;
                        },

                        child: Container(
                          width: 40 , height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.withOpacity(0.3),
                          ),
                          child: Center(child: Icon(Icons.minimize,)),
                        ),
                      ),
                      Container(
                        height: 40, width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color:  Colors.grey.withOpacity(0.3),
                        ),
                        child: Center(child: Text("$count",style: TextStyle(fontSize: 17,color: Colors.black),)),
                      ),
                      GestureDetector(
                        onTap: () {
                          count++;
                          sum = 6500*count;
                        },

                        child: Container(
                          width: 40 , height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey.withOpacity(0.3),
                          ),
                          child: Center(child: Icon(Icons.add,)),
                        ),
                      ),

                      /*
            Container(
              width: 40 , height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey.withOpacity(0.3),
              ),
              child: IconButton(onPressed: ()=>increment(), icon: Icon(Icons.add))

            ),

   */
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:   Row(

                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [

                      Text("د.ع",style: TextStyle(fontSize: 19,color: Colors.red),),

                      Text("$sum",style: TextStyle(fontSize: 19,color: Colors.red),),

                    ],

                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(right: 20,left: 20),
                  child: Container(
                    height: 50, width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.red,
                    ),

                    child: Center(child: Text("اصافة اللى السلة",style: TextStyle(fontSize: 20,color: Colors.white),)),

                  ),
                ),

              ],
            )
        ),

      ],
    );
      }
      ),






    );
  }
}
