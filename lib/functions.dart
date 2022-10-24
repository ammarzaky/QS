import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Func {
  int arvalTime;
  int serviseTime;
  int systemCapasty;

  Func({
    required this.arvalTime,
    required this.serviseTime,
    required this.systemCapasty,
  });

  int calaTi() {
//(systemCapasty+1)=(ti*arvalrate)-(ti*serviserate-(serviserate/arvalrate))
    int ti = 0;
    num arvalrate = (1 / arvalTime);
    num serviserate = (1 / serviseTime);
    while ((systemCapasty + 1) !=
        (ti * arvalrate).toInt() -
            (ti * serviserate - (serviserate / arvalrate)).toInt()) {
      ++ti;
      print((ti * arvalrate).toInt() -
          (ti * serviserate - (serviserate / arvalrate)).toInt());
    }
    ;

    return ti;
  }
}
