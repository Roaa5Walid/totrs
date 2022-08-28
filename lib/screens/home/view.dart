import 'package:flutter/material.dart';
import 'package:totrs/screens/scn/view.dart';
import 'package:totrs/screens/dataa.dart';
import 'package:circle_bottom_navigation_bar/circle_bottom_navigation_bar.dart';
import 'package:circle_bottom_navigation_bar/widgets/tab_data.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  get currentPage => null;

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
      body:ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(

            children: [
              Container(
                height: 300,
                color: Colors.white,
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
                      Container(
                        height: 250,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
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


                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.width-240,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        navrow("images/tasq.jpg","البقالة"),
                        navrow("images/frsh.png","توترز فريش"),
                        GestureDetector(
                          child: navrow("images/brkar.jpg","مطاعم") ,
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Scn(restname: restname, img: img, rang: rang, decrption: decrption, cash: cash, epoin: epoin, point: point, user: user, comend: comend)));
                          },
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
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Scn(restname: restnamem, img: imgm, rang: rangm, decrption: decrptionm, cash: cashm, epoin: epoinm, point: pointm, user: userm, comend: comendm)));
                          },
                        ),

                        navrow("images/tasq.jpg","متاجر"),
                      ],
                    ),
                  ],
                ),
              ),
              Container(height: 10,width: MediaQuery.of(context).size.width,color:Color(0xffe7e7e7)),

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
              )
            ],
          ),
        ],
      ) ,

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
            TabData(icon: Icons.video_collection_outlined),
            TabData(icon: Icons.favorite_border_outlined),
            TabData(
              icon: Icons.person,
              onClick: (){
              },

            ),
          ],
          onTabChangedListener: (int position) {  },

        )



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
              width: 400, height:100,
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
                      height:60, width:60,
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
