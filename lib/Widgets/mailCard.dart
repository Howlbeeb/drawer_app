import 'package:flutter/material.dart';

class mailCard extends StatelessWidget {
  String? Title;
  String? Subtitle;
  String? Body;
  bool? isSelected;
  Widget? selectedIcon;
  mailCard(this.Title, this.Subtitle, this.Body,);


  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.blueAccent,
        child: Text(Title![0]),
      ),
      trailing:IconButton(icon:Icon(
          Icons.star_border_outlined,
        ), onPressed: ()  {isSelected:true;},
      ),
      title: Text(
        Title!,
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
      ),
      subtitle: Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
        Text(
          Subtitle!,
          style: TextStyle(fontWeight: FontWeight.w500),
        ),
        Text(
          Body!,
          style: TextStyle(fontWeight: FontWeight.w300),
        )
      ]),
    );
  }
}
