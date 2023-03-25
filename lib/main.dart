// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.green,
      ),
      home:MyCustomTab(),
    );
  }
}

class MyCustomTab extends StatefulWidget {
  const MyCustomTab({super.key});

  @override
  State<MyCustomTab> createState() => _MyCustomTabState();
}

class _MyCustomTabState extends State<MyCustomTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Custom SubTap"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              // ignore: prefer_const_literals_to_create_immutables
              Container(
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: Colors.red),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.red[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelColor: Colors.black,
                  dividerColor: Colors.black,
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.add_box,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.video_call,
                        color: Colors.black,
                      ),
                    ),
                    
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(children: [
                  MyTabOne(),
                  MyTabTwo(),
                  // MyPostTab(),
                  // MyReelsTab(),
                  // MyTagTab(),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
class MyTabOne extends StatelessWidget {
  const MyTabOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text("This is Tab One",style: TextStyle(fontSize: 20),));
  }
}
class MyTabTwo extends StatelessWidget {
  const MyTabTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // SwitcherButton(
            //   value: true,
            //   onChange: (value) {
            //     print(value);
            //   },
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 30,
                width: 150,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Colors.red[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelColor: Colors.black,
                  dividerColor: Colors.black,
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    Tab(
                      text: "Live",
                    ),
                    Tab(
                      text: "Result",
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              // ignore: prefer_const_literals_to_create_immutables
              child: TabBarView(children: [
                // MyLivePage(),
                // MyResultPage(),
              ]),
            ),
            
          ],
        ),
      ),
    );
  }
}