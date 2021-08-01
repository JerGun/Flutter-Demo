import 'package:flutter/material.dart';

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo Application"),
          backgroundColor: Colors.red,
        ),
        backgroundColor: Colors.grey,
        body: Container(
          child: Image(
            image: NetworkImage(
                'https://i.pinimg.com/originals/27/86/26/278626e6a8d3e055fa4ea6ccb53aff8d.png'),
          ),
        ),
      ),
    );
  }
}
