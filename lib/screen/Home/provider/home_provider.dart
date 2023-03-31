import 'package:flutter/cupertino.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Homeprovider extends ChangeNotifier
{
    WebViewController? webViewController;
  List images=[
    "assets/images/amazon.png",
    "assets/images/disney.jpg",
    "assets/images/flipcart.png",
    "assets/images/jiomart.png",
    "assets/images/meesho.png",
    "assets/images/Myntra.png",
    "assets/images/netflix.png",
    "assets/images/sony.jpg",
    "assets/images/telegram.png",
  ];
  List url=[
    "https://www.amazon.in/",
    "https://www.hotstar.com/in",
    "https://www.flipkart.com/",
    "https://www.jiomart.com/",
    "https://www.meesho.com/",
    "https://www.myntra.com/",
    "https://www.netflix.com/in/",
    "https://www.sonyliv.com/",

  ];
  List name=[
    "Amazon",
    "Disney +",
    "Flipcart",
    "Jiomart",
    "Meesho",
    "Myntra",
    "Netflix",
    "Sony",
    "Telegram",

  ];
    void link(int index)
    {
      webViewController = WebViewController();
      webViewController!.loadRequest(Uri.parse("${url[index]}"));
    }
}