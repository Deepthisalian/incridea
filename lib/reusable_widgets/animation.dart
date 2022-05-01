import 'package:flutter/cupertino.dart';

class ScreenAnimate extends PageRouteBuilder {
  final Widget widget;
  String type = "";
  ScreenAnimate({required this.widget, required this.type})
      : super(
            transitionDuration: const Duration(milliseconds: 500),
            transitionsBuilder: (BuildContext context,
                Animation<double> animation,
                Animation<double> secAnimation,
                Widget child) {
              if (type == "startup") {
                animation =
                    CurvedAnimation(parent: animation, curve: Curves.easeIn);
              } else if (type == "homepage") {
                animation = CurvedAnimation(
                    parent: animation, curve: Curves.fastLinearToSlowEaseIn);
              }
              return ScaleTransition(
                scale: animation,
                alignment: Alignment.center,
                child: child,
              );
            },
            pageBuilder: (BuildContext Context, Animation<double> animation,
                Animation<double> secAnimation) {
              return widget;
            });
}
