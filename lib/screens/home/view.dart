import 'dart:convert';

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:totrs/screens/scn/view.dart';
import 'package:totrs/screens/dataa.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';

import '../resrantapi/view.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get currentPage => null;
  var imglist = ["images/toters.jpg","images/to1.jpg","images/to2.jpg","images/to3.jpg"];
  var litems = ["1","2","Third","4"];
  var imitems = ["images/kkk.jpg","images/kntak.jpg","images/brkar.jpg","images/gelato.jpg","images/inshcof.jpg","images/lahm.jpg","images/dem.jpg","images/shagf.jpg","images/mora.jpg","images/mandi.jpg"];
  var noteitems=[];
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
    List<dynamic> list2=json.decode(body);

    print(list1);
    litems.clear();  //to not print the items in litems just print value in mySql colum(name ,phone,..)
    //items.clear();
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
    print(imitems);//to print in my app
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
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(children: [
              Text("توصيل الى ",style: TextStyle(fontSize: 15,color: Colors.black),),
              Row(children: [
                Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,size: 30,),
                Text("المنزل",style: TextStyle(fontSize: 15,color: Colors.black),),
              ],)
            ],
            ),
          ),
        ],
        leading:
        Icon(Icons.notifications ,color: Colors.black,),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount:1,
            itemBuilder: (BuildContext context, int index){
              return  Column(

                children: [
                  Container(
                    height: 200,
                      child: Swiper(
                        itemBuilder: (context, index) {
                          return Image.asset(
                            imglist[index],
                            fit: BoxFit.fill,
                          );
                        },
                        autoplay: true,
                        itemCount: imglist.length,
                        pagination:
                        const SwiperPagination(builder: SwiperPagination.fraction),
                        control: const SwiperControl(),
                      )),
                  Container(
                    height: 330,
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.arrow_back_outlined,size: 15,),
                                  Text("3.8k",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),
                                ],
                              ),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.warning_amber, color: Color(0xff00aa90),size: 20,),
                                  Text("الفئة الخضراء",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Color(0xff00aa90)),),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(width: 5,),
                              Container(
                                height: 3, width: 30,
                                color: Color(0xffe8e8e8),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 3, width: 30,
                                color: Color(0xffe8e8e8),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 3, width: 30,
                                color: Color(0xffe8e8e8),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 3, width: 30,
                                color: Color(0xffe8e8e8),
                              ),
                              SizedBox(width: 10,),
                              Container(
                                height: 3, width: 30,
                                color: Color(0xffe8e8e8),
                              ),SizedBox(width: 5,),
                              Container(
                                height: 3, width: 30,
                                color: Color(0xffe8e8e8),
                              ),
                              SizedBox(width: 5,),
                              Container(
                                height: 2, width: 30,
                                color: Color(0xff00aa90),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text("تبقى 9 طلبات اضافيه لغاية اغسطس 31",style:TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Color(0xffb6b6b8))),
                            ],
                          ),
                          /*
                          ListView(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              children: [
                                Container(
                                 // height: 350,
                                width: 300,
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                          child:rrow(imitems[index], "\$ٌ\$وفطور","4.9","اكسب نقاط","images/kkk.jpg",),
                                          onTap: (){
                                            Navigator.of(context).push(MaterialPageRoute(
                                                builder: (context) => Scn(restname: restname2, img: img2, rang: rang2, decrption: decrption2, cash: cash2, epoin: epoin2, point: point2, user: user2, comend: comend2)));
                                          }
                                      ),
                                      /*
                                    GestureDetector(
                                      child:rrow(litems[index], "\$ٌ\$وفطور","4.9","اكسب نقاط","images/kntak.jpg") ,
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
                                  ),
                                ),
                              ]

                          ),

                           */

                        Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              GestureDetector(
                                  child:rrow("كاهي فيروز", "\$ٌ\$وفطور","4.9","اكسب نقاط","images/kkk.jpg"),
                                  onTap: (){
                                    Navigator.of(context).push(MaterialPageRoute(
                                        builder: (context) => Scn(restname: restname2, img: img2, rang: rang2, decrption: decrption2, cash: cash2, epoin: epoin2, point: point2, user: user2, comend: comend2,meal1: meal1items[index],meal2: meal2items[index])));
                                  }
                              ),
                              GestureDetector(
                                child:rrow("Cookers", "\$ٌ\$وفطور","4.9","اكسب نقاط","images/kntak.jpg") ,
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Scn(restname: restname3, img: img3, rang: rang3, decrption: decrption3, cash: cash3, epoin: epoin3, point: point3, user: user3, comend: comend3,meal1: meal1items[index],meal2: meal2items[index])));
                                },
                              ),
                              GestureDetector(
                                child: rrow("كاهي فيروز", "\$ٌ\$وفطور","4.9","اكسب نقاط","images/brkar.jpg"),
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Scn(restname: restname, img: img, rang: rang, decrption: decrption, cash: cash, epoin: epoin, point: point, user: user, comend: comend,meal1: meal1items[index],meal2: meal2items[index])));
                                },
                              ),


                            ],
                          ),
                        ),



                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            navrow("images/tasq.jpg","البقالة"),
                            navrow("images/frsh.png","توترز فريش"),
                            /*
                            GestureDetector(
                              child: navrow("images/brkar.jpg","مطاعم") ,
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => Scn(restname: restname, img: img, rang: rang, decrption: decrption, cash: cash, epoin: epoin, point: point, user: user, comend: comend)));
                              },
                            ),

                             */
                            GestureDetector(
                                child:navrow("images/brkar.jpg","مطاعم") ,
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>Rearantapi()));
                                }
                            ),

                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            navrow("images/raseed.png","اضف رصيد"),
                            GestureDetector(
                              child:navrow("images/mndop.jpg","المندوب"),
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Scn(restname: restnamem, img: imgm, rang: rangm, decrption: decrptionm, cash: cashm, epoin: epoinm, point: pointm, user: userm, comend: comendm,meal1: meal1items[index],meal2: meal2items[index])));
                              },
                            ),

                            navrow("images/tasq.jpg","متاجر"),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(height: 10,width: MediaQuery.of(context).size.width,color:Colors.grey.withOpacity(0.1),),

                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(Icons.arrow_back_ios_new, color: Color(0xff00aa90),size: 20,),
                            Text("خصومات اسبوعية",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          ],
                        ),
                        Row(mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("احصل على خصم 50% على مطاعم هذا الاسبوع",style: TextStyle(fontSize: 15,color: Color(0xff97969b)),),
                          ],
                        ),
                      ],
                    ),
                  ),
                     ListView.builder(
                     scrollDirection: Axis.vertical,
                       shrinkWrap: true,
                       itemCount:litems.length,
                        itemBuilder: (BuildContext context, int index){
                             return
                               Center(
                                 child: GestureDetector(
                        child:rrow(litems[index], "\$ٌ\$ فاست فود",pointitems[index],"اكسب نقاط",imitems[index]),
                            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Scn(restname: litems[index], img: imitems[index], rang: rangitems[index], decrption: noteitems[index], cash: cashitems[index], epoin: epoin, point: pointitems[index], user: namecommitems[index], comend: commentitems[index],meal1: meal1items[index],meal2: meal2items[index],)));
              }
              ),
                               );
              }
                     )
                  /*
                  GestureDetector(
                      child:rrow("كاهي فيروز", "\$ٌ\$وفطور","4.9","اكسب نقاط","images/kkk.jpg"),
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => Scn(restname: restname2, img: img2, rang: rang2, decrption: decrption2, cash: cash2, epoin: epoin2, point: point2, user: user2, comend: comend2)));
                      }
                  ),
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
      )





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
                    builder: (context) => Home()));

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
  Padding navrow(String rimg, String rname){
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        margin: EdgeInsetsDirectional.all(10),
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child:
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height:100,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(blurRadius: 3, spreadRadius: 4, offset: Offset(2,4))],
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white
              ),

              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height:60,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.deepPurple,width: 2),
                          image: DecorationImage(
                              image: AssetImage(rimg),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    Text(rname,style: TextStyle(fontSize: 16,color: Colors.black),)
                  ],
                ),
              ),
            ),

          ],
        ),
      ),

    );
  }
  Container rrow(String name, String name2,String x,String x1,String mimg) {
    return Container(
      margin: EdgeInsetsDirectional.all(5),
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
                        Text(x1,style: TextStyle(fontSize: 15,color: Colors.cyan),),
                        Icon(Icons.star,color: Colors.cyanAccent,),
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
                        Icon(Icons.star,color: Colors.cyanAccent,),
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
