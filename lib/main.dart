import 'package:flutter/material.dart';
import 'package:totrs/screens/butler/view.dart';
import 'package:totrs/screens/details/view.dart';
import 'package:totrs/screens/home/view.dart';
import 'package:totrs/screens/myDemo/view.dart';
import 'package:totrs/screens/profile/view.dart';
import 'package:totrs/screens/resrantapi/view.dart';
import 'package:totrs/screens/rest/view.dart';
import 'package:totrs/screens/scn/view.dart';
import 'package:totrs/screens/signin/view.dart';
import 'package:totrs/screens/sinup/view.dart';
import 'package:totrs/screens/spla/view.dart';
import 'package:totrs/screens/tt/view.dart';

import 'bottonNavigationbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signin(),
    );
  }
}



