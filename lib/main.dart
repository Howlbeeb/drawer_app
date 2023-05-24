import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'Widgets/mailCard.dart';
import 'new_page.dart';

void main() => runApp(MaterialApp(
      home: Homepage(),
      theme: ThemeData(primarySwatch: Colors.indigo,useMaterial3: true),
    ));

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.00,
        title: Text(
          "GO MAIL",
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.blueGrey,
                child: Text(
                  'H',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Text(
                    'O',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
              accountName: Text('Habeeblahi Balogun'),
              accountEmail: Text("howlbeebsensei@gmail.com"),
            ),
            ListTile(
              title: Text("Starred"),
              trailing: Icon(Icons.star),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => NewPage("Page One"),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Drafts"),
              trailing: Icon(Icons.drafts),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (BuildContext context) => NewPage("Page Two"),
                  ),
                );
              },
            ),
            Divider(
              thickness: 0.7,
            ),
            ListTile(
              title: Text("Close"),
              trailing: Icon(Icons.close),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          child: ListView(
            children: [
              mailCard("Cousera", "Dear Habeeblahi Balogun.....","this is a body"),
              mailCard("Cousera", "Dear Habeeblahi Balogun.....","this is a body"),
              mailCard("Cousera", "Dear Habeeblahi Balogun.....","this is a body"),
              mailCard("Cousera", "Dear Habeeblahi Balogun.....","this is a body"),
              mailCard("Vbank", "Dear Habeeblahi Balogun.....","this is a body"),
              mailCard("Kaggle", "Dear Habeeblahi Balogun.....","this is a body"),
              mailCard("Datacamp", "Dear Habeeblahi Balogun.....","this is a body"),
              mailCard("GTBank", "Dear Habeeblahi Balogun.....","this is a body"),
              mailCard(
                  "Afolabi Amusan", "Dear Habeeblahi Balogun, send me money","this is a body"),
              mailCard("MTN NG", "Dear Habeeblahi Balogun.....","this is a body"),
              mailCard("GTBank", "Dear Habeeblahi Balogun.....","this is a body"),
              mailCard("GTBank", "Dear Habeeblahi Balogun.....","this is a body"),
              mailCard("Credit notification",
                  "Dear Habeeblahi Balogun, a transaction just ocurre..","this is a body")
            ],
          ),
        ),
      ),
    );
  }
}
