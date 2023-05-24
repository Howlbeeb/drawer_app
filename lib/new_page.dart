import"package:flutter/material.dart";

class NewPage extends StatelessWidget{
  String? title;
NewPage(this.title);
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(title!),centerTitle: true,
      ),
      body: Center(
        child: Text(title!),
      ),
    );
  }
}