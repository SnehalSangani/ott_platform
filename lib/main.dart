import 'package:flutter/material.dart';
import 'package:ott_platform/screen/Home/provider/home_provider.dart';
import 'package:ott_platform/screen/Home/view/home_screen.dart';
import 'package:provider/provider.dart';

import 'screen/website/view/web_screen.dart';
void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(context) => home(),
          'web':(context) => website(),
        },
      ),
    )
  );
}