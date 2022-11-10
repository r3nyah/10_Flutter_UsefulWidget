import 'package:flutter/material.dart';

//Expension Tile
class Two extends StatefulWidget {
  const Two({Key? key}) : super(key: key);

  @override
  State<Two> createState() => _TwoState();
}

class _TwoState extends State<Two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expension Tile'),
      ),
      body: ExpansionTile(
        title: Text('Flutter'),
        leading: FlutterLogo(),
        children: [
          ListTile(
            title: Text('Flutter'),
            leading: FlutterLogo(),
          ),
          ListTile(
            title: Text('Flutter'),
            leading: FlutterLogo(),
          ),
          ListTile(
            title: Text('Flutter'),
            leading: FlutterLogo(),
          ),
          ListTile(
            title: Text('Flutter'),
            leading: FlutterLogo(),
          ),
        ],
      ),
    );
  }
}
