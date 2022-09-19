import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:totrs/screens/signin/view.dart';

import '../../bottonNavigationbar.dart';
import '../../dataa.dart';
import '../home/view.dart';
var c_nameController=TextEditingController();
var c_phoneController=TextEditingController();
var c_unversyController=TextEditingController();
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  Future Add_data() async {
    var url = Uri.parse("http://localhost:4000/add");
    Map<String, String> headers = {"Content-type": "application/json"};

    String json = '{"u_name": "$nameup",'
        ' "u_phone": "$phoneup",'
        ' "u_location": "$unversyup"}';
    // make POST request
    Response response = await post(url, headers: headers, body: json);
    // check the status code for the result
    int statusCode = response.statusCode;
    // this API passes back the id of the new item added to the body
    String body1 = response.body;
    var data = jsonDecode(body1);
    print(data);
    var res = data["code"];

    if (res == null) {}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff04a794),
        elevation: 0,
      ),
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(child: Image.asset("images/toters.jpg",width: 250,height: 250,)),
                    Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child:
                        TextField(
                          controller: c_nameController,
                          maxLength: 50,
                          textAlign: TextAlign.right,
                          cursorColor:Color(0xffffffff),
                          style: const TextStyle(color: Colors.white),
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
                    ),

                    SizedBox(height: 20,),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child:  TextField(
                        controller: c_phoneController,
                        maxLength: 16,
                        textAlign: TextAlign.right,
                        cursorColor: Color(0xffffffff),
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          counterStyle: TextStyle(color: Color(0xffffffff),fontSize: 12,),
                          fillColor: Colors.grey.withOpacity(0.3), filled: true,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20)
                          ),

                          hintText: "رقم الهاتف",


                        ),
                      ),),


                    Visibility(
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child:
                        TextField(
                          controller: c_unversyController,
                          textAlign: TextAlign.right,
                          cursorColor: Color(0xffffffff),
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            counterStyle: TextStyle(color: Color(0xffffffff),fontSize: 12,),
                            fillColor: Colors.grey.withOpacity(0.3), filled: true,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20)
                            ),

                            hintText: "الموقع",


                          ),
                        ),),
                    ),


                    SizedBox(height: 40,),
                    SizedBox(
                      width:MediaQuery.of(context).size.width,
                      height: 50 ,// <-- match-parent
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MainNav()));
                          setState(() {
                            nameup=c_nameController.text;
                            phoneup=c_phoneController.text;
                            unversyup=c_unversyController.text;
                            Add_data();

                          });
                          //getData();
                        },
                        child: Text("التالي ",style: TextStyle(fontSize: 20,color:  Color(0xff04a794),),),
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