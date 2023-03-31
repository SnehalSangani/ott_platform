import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ott_platform/screen/Home/provider/home_provider.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class website extends StatefulWidget {
  const website({Key? key}) : super(key: key);

  @override
  State<website> createState() => _websiteState();
}

class _websiteState extends State<website> {
  Homeprovider? homeproviderfalse;
  @override
  Widget build(BuildContext context) {
    homeproviderfalse=Provider.of(context,listen: false);
    return SafeArea(
      child: Scaffold(
        body: WebViewWidget(controller: homeproviderfalse!.webViewController!,),
      ),
    );
  }
}

