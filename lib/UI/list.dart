import 'package:flutter/material.dart';

class Lists extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Stateful_State();
  }


}

class Stateful_State extends State<Lists>{
  Widget _myListView(BuildContext context) {
    return ListView.separated(
      itemCount: 500,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('row $index'),
        );
      },
      separatorBuilder: (context,index){
        return Divider();
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:
      Container(
        /*decoration:BoxDecoration(
        image: DecorationImage(image: AssetImage("images/splash.jpg"),
        fit: BoxFit.cover),
        ),*/
        child: _myListView(context),
      )
    );
  }
}