import 'package:flutter/material.dart';

import 'constants.dart';

void mainDelegate() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Build env - ${Constants.whereAmI}',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Build env - ${Constants.whereAmI}'),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'Build env - ${Constants.whereAmI}',
              ),
           const    Divider(),
              Text("Server 1: ${Constants.serverOne}"),
           const    Divider(),
              Text("Server 2: ${Constants.serverTwo}"),
           const    Divider(),
              Constants.whereAmI == "prod"
                  ?const  Text("OMG! Such a prod!")
                  :const  Text("You're still testing man!"),
            ],
          ))),
      debugShowCheckedModeBanner: false,
    );
  }
}
