import 'package:flutter/material.dart';

//CheckBox
class Three extends StatefulWidget {
  const Three({super.key});

  @override
  State<Three> createState() => _ThreeState();
}

class _ThreeState extends State<Three> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Theme(
        data: Theme.of(context).copyWith(unselectedWidgetColor: Colors.purple),
        child: Center(
          child: CheckboxListTile(
            title: Text('Check Box'),
            subtitle: Text('Subtitle'),
            controlAffinity: ListTileControlAffinity.leading,
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
            activeColor: Colors.deepPurple,
            checkColor: Colors.purpleAccent,
          ),
        ),
      ),
    );
  }
}
