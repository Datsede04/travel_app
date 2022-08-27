import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/widgets/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          padding: const EdgeInsets.only(top: 30, left: 20),
          child: Row(
            children: [
              const Icon(Icons.menu, size: 30, color: Colors.black54),
              Expanded(child: Container()),
              Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.withOpacity(0.5))),
            ],
          ),
        ),
        const SizedBox(height: 40),
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: AppText(
            text: "Discover",
            color: Colors.black,
            size: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 30),
        Container(
            width: double.maxFinite,
            child: TabBar(
                controller: _tabController,
                labelColor: Colors.black,
                tabs: [
                  Tab(text: "Places"),
                  Tab(text: "Inspiration"),
                  Tab(text: "Explore")
                ])),
        Container(
          height: 300,
          width: double.maxFinite,
          child: TabBarView(
            controller: _tabController,
            children: [
              Text("Hi"),
              Text("There"),
              Text("Bye"),
            ],
          ),
        )
      ]),
    );
  }
}
