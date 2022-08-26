import 'package:flutter/material.dart';
import 'package:totrs/screens/dataa.dart';
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

   });
  @override
  State<Scn> createState() => _ScnState();
}
class _ScnState extends State<Scn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          imgpage(widget.img,widget.rang),
          page(widget.restname,widget.decrption,
              widget.cash,widget.epoin,widget.point,widget.user,
              widget.comend
          ),
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
          height: MediaQuery.of(context).size.width-250,
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
          ),  )

      ],
    );
 }
Container page(String  restname,String decrption ,String cash,String epoin, String poin,String user,String comend ){
    return  Container(
      child: Column(
        children: [
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(widget.restname,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
        ],
      ),
    );
}
}
