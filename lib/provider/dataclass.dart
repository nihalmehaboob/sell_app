// import 'package:flutter/cupertino.dart';

// class DataClass extends ChangeNotifier {
//   int _x = 0;
//   int get x => _x;
//   void incrementX() {
//     _x++;
//     notifyListeners();
//   }

//   void decrementX() {
//     _x--;
//     notifyListeners();
//   }
// }
import 'package:flutter/cupertino.dart';
import 'package:shopapp/homepage.dart';

class DataClass extends ChangeNotifier {
  List<bool> liked = [];
  // DataClass({
  //   required this.index,
  //   // required this.liked,
  // });

  List<bool> get like => liked;
  void likeunlik(int index) {
    liked[index] = !liked[index];
    notifyListeners();
  }

  bool check(int index) {
    return liked[index];
  }
}
