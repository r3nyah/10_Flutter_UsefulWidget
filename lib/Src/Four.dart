import 'package:flutter/material.dart';

class Four extends StatefulWidget {
  const Four({super.key});

  @override
  State<Four> createState() => _FourState();
}

class _FourState extends State<Four> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text(
            'Open Dialog',
          ),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(
                      'My Title',
                    ),
                    content: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                    ),
                    actions: [
                      TextButton(
                        child: Text('Cancel'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      TextButton(
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      )
                    ],
                  );
                });
          },
        ),
      ),
    );
  }
}
