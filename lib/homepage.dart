import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopapp/connection.dart/httprequst.dart';

import 'connection.dart/modal.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

List<Post>? p;

class _homepageState extends State<homepage> {
  var isload = false;
  datacall() async {
    p = await remot().getcall();
    if (p != null) {
      setState(() {
        isload = true;
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    datacall();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            separatorBuilder: (context, index) {
              return Divider();
            },
            itemCount: p?.length.toInt() ?? 0,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.grey),
                  child: Center(child: Text(p![index].id.toString())),
                ),
                title: Text(p![index].title,
                    maxLines: 1, overflow: TextOverflow.ellipsis),
                subtitle: Text(
                  p![index].userId.toString(),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.start,
                ),
                trailing: Icon(
                  Icons.star,
                ),
              );
            }));
  }
}
//  Visibility(
//                 visible: isload,
//                 child: Container(
//                   decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(12),
//                       color: (index % 2 == 0) ? Colors.green : Colors.purple),
//                   child: Row(
//                     children: [
                      // Container(
                      //   height: 50,
                      //   width: 50,
                      //   decoration: BoxDecoration(
                      //       borderRadius: BorderRadius.circular(12),
                      //       color: Colors.grey),
                      //   child: Center(child: Text(p![index].id.toString())),
                      // ),
//                       SizedBox(
//                         width: 16,
//                       ),
//                       Expanded(
//                         child: Column(
//                           children: [
                            // Text(p![index].title,
                            //     maxLines: 2, overflow: TextOverflow.ellipsis),
                            // Text(
                            //   p![index].userId.toString(),
                            //   maxLines: 1,
                            //   overflow: TextOverflow.ellipsis,
                            //   textAlign: TextAlign.start,
                            // ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
                
//                 ),
//               );