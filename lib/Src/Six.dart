import 'package:flutter/material.dart';

//Page View
class Six extends StatefulWidget {
  const Six({super.key});

  @override
  State<Six> createState() => _SixState();
}

class _SixState extends State<Six> {
  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 1);

    @override
    void dispose(){
      controller.dispose();
      super.dispose();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Page View'
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.keyboard_arrow_left),
            onPressed: (){
              controller.previousPage(
                //0,
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.keyboard_arrow_right),
            onPressed: (){
              controller.nextPage(
                //2,
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
              );
            },
          )
        ],
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        //physic: const NeverScrollableScrollPhysic(),
        controller: controller,
        //scrollDirection: Axis.vertical,
        onPageChanged: (index){
          print('Page: ${index +1}');
        },
        children: [
          Container(color: Colors.deepPurple,
          child: Center(
            child: Text(
              'Page 1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
            ),
          )
          ),
          Container(color: Colors.purple,
          child: Center(
            child: Text(
              'Page 2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
            ),
          )
          ),
          Container(color: Colors.purpleAccent,
          child: Center(
            child: Text(
              'Page 3',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20
              ),
            ),
          )
          ),
        ],
      ),
    );
  }
}