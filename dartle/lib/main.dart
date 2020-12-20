
import 'package:dartle/model.dart';
import 'package:flutter/material.dart';

import 'dataerror.dart';
import 'error.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: FutureBuilder<List<DataClass>>(
          future:getCategoris(),
          builder: (context, snap) {
            return snap.data==null?
            Center(child: Text("Not Has Data"),)
            :Container(
              child: ListView.builder(
                itemCount: snap.data==null?0:snap.data.length,
                itemBuilder: (context , index){
                  DataClass item = snap.data[index];
                  return Container(
                    height: 100,
                    width: 400,
                    color: Colors.red,
                    child: Center(child: 
                    Column(
                      children: [
                        Text(item.id),
                        Text(item.name),
                         Text(item.updatedAt),
                          Text(item.createdAt),
                      ],
                    ),
               
                    ),
                  );
                },
              ),
            );
          },
        ));
  }
}
