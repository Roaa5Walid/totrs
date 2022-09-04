import 'package:flutter/material.dart';
import 'package:totrs/screens/home/view.dart';
class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffff4349),
      body: ListView(
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
                        backgroundImage:AssetImage("images/brkar.jpg"),
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
      child: Text("برجرات",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xffff4349)),),
    ),
    Padding(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [

          Text("جيد جدا",style: TextStyle(fontSize: 20,color: Colors.black),),
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
          Text("المنصور",style: TextStyle(fontSize: 20,color: Colors.black),),
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
     child: Text("يندويش فيليه الدجاج",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Color(0xffff4349)),),
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
      ),

    );
  }
}
