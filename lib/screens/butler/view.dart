import 'package:flutter/material.dart';
class Butler extends StatefulWidget {
  const Butler({Key? key}) : super(key: key);

  @override
  State<Butler> createState() => _ButlerState();
}

class _ButlerState extends State<Butler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        width:MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Color(0xff00b692),
              child: Center(child: Text("we deliver anything that fits on a \n moorbike!",style: TextStyle(fontSize: 20,color: Colors.white),)),
            ),

          Padding(
            padding: const EdgeInsets.all(20),
            child: Text("Request a butler to:",style: TextStyle(fontSize: 20,color: Colors.black),),
          ),
           Box("images/deliver.jpg", "Deleiver your stuff"),
            Box("images/mndop.jpg", "Buy something")

          ],
        ),
      ),
    );
  }
  Container Box(String img,String addres,  ){
    return Container(
      margin: EdgeInsetsDirectional.all(15),
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white24,
        boxShadow:[ BoxShadow(
          blurRadius: 4, spreadRadius:4,color: Colors.black.withOpacity(0.1)

        )
             ]
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8),
                  child: Text(addres,style: TextStyle(fontSize: 20,color: Color(0xff00b692)),),
                ),
                Text("Get up to 50% off on these",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),
                Text("selected restaurant",style: TextStyle(fontSize: 15,color: Colors.blueGrey),),

              ],
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          CircleAvatar(
            backgroundImage: AssetImage(img),
            radius: 50,
          ),
          /*
          Container(
            height:100,
            width: 100,
            decoration: BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  image: AssetImage(img),
                  fit: BoxFit.cover,
                )
            ),
          ),

           */
         Spacer(),
          Icon(Icons.arrow_forward_ios,color:Color(0xff00b692),)
        ],
      ),
    );
  }
}
