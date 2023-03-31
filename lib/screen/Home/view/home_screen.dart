import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ott_platform/screen/Home/provider/home_provider.dart';
import 'package:provider/provider.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  Homeprovider? homeprovidertrue;
  Homeprovider? homeproviderfalse;

  @override
  Widget build(BuildContext context) {
    homeproviderfalse = Provider.of<Homeprovider>(context, listen: false);
    homeprovidertrue = Provider.of<Homeprovider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("OTT Platform"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: GridView.builder(
          itemCount: homeproviderfalse!.images.length,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, 'webpage');
                homeproviderfalse!.link(index);
              },
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                        ),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              "${homeproviderfalse!.images[index]}",
                              fit: BoxFit.cover,
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("${homeproviderfalse!.name[index]}",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1)),
                    ],
                  )),
            );
          },
        ),
      ),
    );
  }
}
