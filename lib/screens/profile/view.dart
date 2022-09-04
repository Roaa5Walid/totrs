import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Roaa Walid",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
        elevation: 1,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
Container(
  width: MediaQuery.of(context).size.width,
  child:   Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
          Container(
        margin: EdgeInsetsDirectional.all(20),
        height: 40,
        width: 180,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow:[
          BoxShadow(blurRadius: 2,spreadRadius: 2 ,color: Colors.grey.withOpacity(0.4) )
        ]
      ),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(Icons.card_giftcard,color: Colors.green.shade600,),
                ),
                Column(
                  children: [
                    Text("Green",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.green.shade600),),
                    Text("0 pts",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black45),),
                  ],
                ),
                SizedBox(width: 60,),
                Icon(Icons.arrow_forward_ios,color: Colors.green.shade600,),
              ],
            ),
      ),

      Container(
        margin: EdgeInsetsDirectional.all(20),
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow:[
              BoxShadow(blurRadius: 2,spreadRadius: 2 ,color: Colors.grey.withOpacity(0.4) )
            ]
        ),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(height: 40,
                    width: 40,
                    margin: EdgeInsetsDirectional.only(bottom: 10, start: 25,end: 20,top: 10),
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(7),
                    ),
                    child: Icon(Icons.person,color: Colors.black.withOpacity(0.4),)),
                Text("profile",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(height: 40,
                    width: 40,
                    margin: EdgeInsetsDirectional.only(bottom: 10, start: 20,end: 20,top: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Icon(Icons.headset_mic_outlined,color: Colors.black.withOpacity(0.4),)),
                Text("Support",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(height: 40,
                    width: 40,
                    margin: EdgeInsetsDirectional.only(bottom: 10, start: 20,end: 20,top: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Icon(Icons.payments,color: Colors.black.withOpacity(0.4),)),
                Text("payments",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(height: 40,
                        width: 40,
                        margin: EdgeInsetsDirectional.only(bottom: 10, start: 20,end: 20,top: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(7),
                        ),
                        child: Icon(Icons.language,color: Colors.black.withOpacity(0.4),)),
                    Positioned(
                      right: 10,
                      child: Container(
                        width: 20, height: 20,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xff00b692),
                        ),
                        child: Center(child:
                        Text("En",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold,color: Colors.black),))), ),



                  ],

                ),

                Text("Language",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black),),



              ],

            ),
          ],
        ),
      ),
//Toters Cash
      Container(
        margin: EdgeInsetsDirectional.all(20),
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow:[
              BoxShadow(blurRadius: 2,spreadRadius: 2 ,color: Colors.grey.withOpacity(0.4) )
            ]
        ),
        child:
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
children: [
  Text("Toters Cash",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
   Icon(Icons.info_outline_rounded,color: Color(0xff00b692),)
      ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Icon(Icons.wallet,color: Color(0xffc7c7c7),),
                    SizedBox(width: 10,),
                    Text("Wallet",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
              Container(height: 3,width: MediaQuery.of(context).size.width,color: Color(0xfff9f7fc)),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Icon(Icons.add,color: Color(0xffc7c7c7),),
                    SizedBox(width: 10,),
                    Text("Add Funds",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
              Container(height: 3,width: MediaQuery.of(context).size.width,color: Color(0xfff9f7fc)),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Icon(Icons.send_rounded, color: Color(0xffc7c7c7),),
                    SizedBox(width: 10,),
                    Text("Send Funds",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //promotion
      Container(
        margin: EdgeInsetsDirectional.all(20),
        height: 150,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow:[
              BoxShadow(blurRadius: 2,spreadRadius: 2 ,color: Colors.grey.withOpacity(0.4) )
            ]
        ),
        child:
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Promotions",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Icon(Icons.credit_card,color: Color(0xffc7c7c7),),
                    SizedBox(width: 10,),
                    Text("Creditst",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
              Container(height: 3,width: MediaQuery.of(context).size.width,color: Color(0xfff9f7fc)),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Icon(Icons.qr_code,color: Color(0xffc7c7c7),),
                    SizedBox(width: 10,),
                    Text("Add Funds",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //Account details
      Container(
        margin: EdgeInsetsDirectional.all(20),
        height: 280,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow:[
              BoxShadow(blurRadius: 2,spreadRadius: 2 ,color: Colors.grey.withOpacity(0.4) )
            ]
        ),
        child:
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Account details",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Icon(Icons.notifications,color: Color(0xffc7c7c7),),
                    SizedBox(width: 10,),
                    Text("Notification",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
              Container(height: 3,width: MediaQuery.of(context).size.width,color: Color(0xfff9f7fc)),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined,color: Color(0xffc7c7c7),),
                    SizedBox(width: 10,),
                    Text("Addresses",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
              Container(height: 3,width: MediaQuery.of(context).size.width,color: Color(0xfff9f7fc)),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Icon(Icons.favorite_border_outlined, color: Color(0xffc7c7c7),),
                    SizedBox(width: 10,),
                    Text("favorite",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Icon(Icons.room_preferences, color: Color(0xffc7c7c7),),
                    SizedBox(width: 10,),
                    Text("preferences",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Icon(Icons.share, color: Color(0xffc7c7c7),),
                    SizedBox(width: 10,),
                    Text("refer a frind",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //help center
      Container(
        margin: EdgeInsetsDirectional.all(20),
        height: 200,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow:[
              BoxShadow(blurRadius: 2,spreadRadius: 2 ,color: Colors.grey.withOpacity(0.4) )
            ]
        ),
        child:
        Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Row(
                children: [
                  Text("Account details",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Icon(Icons.headset_mic_outlined,color: Color(0xffc7c7c7),),
                    SizedBox(width: 10,),
                    Text("Get Support",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
              Container(height: 3,width: MediaQuery.of(context).size.width,color: Color(0xfff9f7fc)),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Icon(Icons.chat,color: Color(0xffc7c7c7),),
                    SizedBox(width: 10,),
                    Text("Support Tickets",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),
              Container(height: 3,width: MediaQuery.of(context).size.width,color: Color(0xfff9f7fc)),
              Padding(
                padding: const EdgeInsets.only(bottom: 10,top: 10),
                child: Row(
                  children: [
                    Icon(Icons.question_mark_sharp, color: Color(0xffc7c7c7),),
                    SizedBox(width: 10,),
                    Text("FAQ",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.black),),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
Container(
  margin: EdgeInsetsDirectional.all(20),
  height: 60,
  width: MediaQuery.of(context).size.width,
  decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow:[
        BoxShadow(blurRadius: 2,spreadRadius: 2 ,color: Colors.grey.withOpacity(0.4) )
      ]
  ),
  child:
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      children: [
        Icon(Icons.signpost_outlined,color: Colors.red,),
        SizedBox(width: 10,),
        Text("Sign out",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.red),),

      ],
    ),
  ),
)
    ],

  ),
)
        ],
      ),
    );
  }
}
