import 'package:flutter/material.dart';

//Bottom Sheet
class One extends StatefulWidget {
  const One({Key? key}) : super(key: key);

  @override
  State<One> createState() => _OneState();
}

class _OneState extends State<One> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(25),
                ),
              ),
              context: context,
              builder: (context) => Container(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FlutterLogo(size: 120,),
                    FlutterLogo(size: 120,),
                    FlutterLogo(size: 120,),
                    FlutterLogo(size: 120,),
                    Center(
                      child: ElevatedButton(
                        onPressed: (){
                          Navigator.pop(context);
                        },
                        child: Text('Close'),
                      ),
                    )
                  ],
                ),
              )
            );
          },
          child: Text(
            'Show Bottom Sheet',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          )
        )
      ),
    );
  }
}
