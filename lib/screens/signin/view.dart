import 'dart:convert';
import 'dart:html';
import 'package:flutter/material.dart';
import '../../bottonNavigationbar.dart';
import '../../dataa.dart';
import '../home/view.dart';
import 'package:http/http.dart';

import '../sinup/view.dart';

var nameController=TextEditingController();
var phoneController=TextEditingController();

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  var litems = [];
  bool chick = false;
  Future getData() async{
    var url=Uri.parse("http://localhost:4000");
    Response response= await get(url);
    String body =response.body;

    List<dynamic> list1=json.decode(body);
    print(list1);
    //litems.clear();  //to not print the items in litems just print value in mySql colum(name ,phone,..)
    for (int i=0; i<list1.length; i++){
      litems.add(list1[i]["name"]);
      litems.add(list1[i]["phone"]);
      setState(() {
        // if the name in mySql == name you inter
        if((list1[i]["u_name"])==name&&list1[i]["u_phone"]==phone){
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => MainNav()));
        }
        else
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Signup()));
      });

    }
    print(litems);


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff04a794),
      body:Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        child:
        Padding(
          padding: const EdgeInsets.all(20),
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount:1,
            itemBuilder: (BuildContext context, int i) {
              return
                Column(
                  children: [
                    Image.asset("images/toters.jpg",width: 200,height: 200,),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child:GestureDetector(
                          child:   Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.arrow_drop_down),
                              Text("اذا لم يكن لك حسا اضغط هنا لانشاء حساب جديد  ",style: TextStyle(fontSize: 17,color: Color(0xffffffff)),),
                            ],
                          ),

                          onTap: () {
                            setState(() {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Signup()));
                            });
                          }

                      ),

                    ),
                    SizedBox(height: 20,),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child:
                      TextField(
                        controller: nameController,
                        maxLength: 15,
                        textAlign: TextAlign.right,
                        cursorColor: Color(0xffffffff),
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          counterStyle: TextStyle(color: Color(0xffffffff),fontSize: 12,),
                          fillColor: Colors.grey.withOpacity(0.3), filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),

                          hintText: "الاسم",


                        ),
                      ),
                    ),

                    SizedBox(height: 20,),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child:  TextField(
                        controller: phoneController,
                        maxLength: 11,
                        textAlign: TextAlign.right,
                        cursorColor: Color(0xffffffff),
                        style: const TextStyle(color: Colors.black),
                        decoration: InputDecoration(
                          counterStyle: TextStyle(color: Colors.white,fontSize: 12,),
                          fillColor: Colors.grey.withOpacity(0.3), filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),

                          hintText: "رقم الهاتف",


                        ),
                      ),),


                    Padding(
                      padding: const EdgeInsets.all(10),
                      child:GestureDetector(
                          child:   Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.arrow_drop_down),
                              Text("اذا كان لديك رمز مشاركةز اضغط هنا ",style: TextStyle(fontSize: 17,color: Colors.white),),
                            ],
                          ),

                          onTap: () {
                            setState(() {
                              chick =! chick;
                            });
                          }

                      ),

                    ),

                    Visibility(
                      visible: chick,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child:
                        TextField(
                          textAlign: TextAlign.right,
                          cursorColor: Color(0xffffffff),
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                            counterStyle: TextStyle(color:Color(0xffffffff),fontSize: 12,),
                            fillColor: Colors.grey.withOpacity(0.3), filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),

                            hintText: "رمز المشاركة",


                          ),
                        ),),
                    ),


                    SizedBox(height: 40,),
                    SizedBox(
                      width:MediaQuery.of(context).size.width,
                      height: 50 ,// <-- match-parent
                      child: ElevatedButton(
                        onPressed: (){

                          setState(() {
                            name=nameController.text;
                            phone=phoneController.text;
                          });
                          getData();
                        },
                        child: Text("التالي ",style: TextStyle(fontSize: 20,color: Color(0xff04a794)),),
                        style: ElevatedButton.styleFrom(
                            elevation: 5,
                            primary: Color(0xffffffff),
                            // padding: EdgeInsets.symmetric(horizontal:200, vertical: 20),
                            side: BorderSide(
                              width: 0,
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(20,)
                            )),

                      ),
                    )






                  ],
                );
            },
          ),

        ),
      ),


    );
  }
}