

import 'package:flutter/material.dart';
class Rest extends StatefulWidget {
  const Rest({Key? key}) : super(key: key);

  @override
  State<Rest> createState() => _RestState();
}

class _RestState extends State<Rest> {
  String raditem = "";
  String raditem2 = "";
  bool ckec = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/kntak.jpg"),
                fit: BoxFit.cover
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Chicken Madfoun platter ",style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black),),
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam sodales dolor dui, nec aliquet justo congue eget. Nullam semper massa sed turpis  ",style: TextStyle(fontSize: 15,color: Colors.black),),
                Text("IQD 13,000 ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),
              ],
            ),
          ),
SizedBox(height: 10,),
          Container(
            height: 3, width: MediaQuery.of(context).size.width,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("choose portion ",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.black),),
RadioListTile(
  title: Text("chicken"),
    value: "The chicken",
    groupValue: raditem,
    onChanged: (val){
      setState(() {
        raditem = "$val";
      }
      );
    },
  activeColor: Colors.purple,
  //shape:Border(bottom: BorderSide(color: Colors.cyan)) ,
),
              RadioListTile(
                  title: Text("whol chicken"),
                  value: "The chicken",
                  groupValue: raditem2,
                  onChanged: (val){
                    setState(() {
                      raditem2 = "$val";

                    });
                  }
              ),
              Container(
                height: 3, width: MediaQuery.of(context).size.width,
              ),
              CheckboxListTile(
                title: Text("spice"),
                  value: ckec ,
                  onChanged: (val) {
                    setState(() {
                      ckec = val!;
                    });
                  },
              ),
              CheckboxListTile(
                title: Text("spice"),
                value: ckec ,
                onChanged: (val) {
                  setState(() {
                    ckec = val!;
                  });
                },
              )
            ],
          )




        ],
      ),
    );
  }
}
