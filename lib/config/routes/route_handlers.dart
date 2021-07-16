import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_template/modules/index/screens/index_screen.dart';

// Module handlers
// Index handlers
var indexHandler = Handler(
  handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
    switch (params["initialRoute"]?.first) {
      case "0":
        return IndexScreen(
          initialPage: 0,
        );
      case "1":
        return IndexScreen(
          initialPage: 1,
        );
      case "2":
        return IndexScreen(
          initialPage: 2,
        );
      default:
        return IndexScreen(
          initialPage: 0,
        );
    }
  },
);
