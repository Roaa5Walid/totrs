import 'package:flutter/material.dart';
import 'package:totrs/screens/signin/view.dart';

import '../home/view.dart';
import '../sinup/view.dart';


class Spla extends StatefulWidget {
  const Spla({Key? key}) : super(key: key);

  @override
  State<Spla> createState() => _SplaState();
}

class _SplaState extends State<Spla> {
  Future Delay() async{
    await Future.delayed(const Duration(seconds: 4));
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => Signin()));
  }
  @override
  void initState(){
    super.initState();
    Delay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff04a794),
      body:Center(child: Image.asset("images/toters.jpg",width: 200,height: 200,)),

    );
  }
}