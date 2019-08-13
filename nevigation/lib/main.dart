import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
  title: "Navigation Basics",
  home: FirstRoute(),
    ));
  }
  class FirstRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(title: Text("first route"),),
    body: Center(child: RaisedButton(child: Text("open route"),
    onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context) => SecondRoute()),
            );
          }
          ,)
          ,)
          ,);
        }
      } 
      class SecondRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("second route"),
      ),
      body: Center(child: RaisedButton(
        onPressed: (){
          Navigator.pop(context);
        },
        child: Text("go back!"),
      ),
      ),
    );
  }
}