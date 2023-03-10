import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class ZikrPage extends StatelessWidget {
  const ZikrPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              // TODO: Implement menu item selected callback
            },
            itemBuilder: (BuildContext context) => [
              const PopupMenuItem(
                value: 1,
                child: Text('Menu Item 1'),
              ),
              const PopupMenuItem(
                value: 2,
                child: Text('Menu Item 2'),
              ),
              const PopupMenuItem(
                value: 3,
                child: Text('Menu Item 3'),
              ),
            ],
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: Card(
                color: index % 2 == 0 ? Colors.white : Colors.grey[200],
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Subhan Allah',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8.0),
                          Text(
                            'من الشمال إلى اليمين، تمتد الصحراء الكبرى عبر عشر دول في شمال أفريقيا، وتشمل الجزائر وليبيا وموريتانيا والنيجر والصحراء الغربية والسودان وتشاد ومصر وإريتريا والصومال. تغطي مساحة تبلغ حوالي 3.6 مليون كيلومتر مربع، وتعتبر واحدة من أكبر الصحاري الجافة في العالم.',
                            style: TextStyle(fontFamily: 'Arabic'),
                            textDirection: TextDirection.rtl,
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            'Recited 33 times',
                            style: TextStyle(fontSize: 14.0),
                          ),
                          SizedBox(height: 4.0),
                          Text(
                            'Reward: 100 deeds',
                            style: TextStyle(fontSize: 14.0),
                          ),
                        ],
                      ),
                    ),
                    CounterWidget(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 0;

  void _incrementCount() {
    setState(() {
      _count++;
    });
    HapticFeedback.vibrate();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: GestureDetector(
        onTap: _incrementCount,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(8.0),
            ),
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.favorite, color: Colors.white),
              SizedBox(width: 4.0),
              Text(
                '$_count',
                style: TextStyle(color: Colors.white, fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
