import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class TabBarCustomView extends StatefulWidget {
  const TabBarCustomView({super.key});

  @override
  State<TabBarCustomView> createState() => _TabBarCustomViewState();
}

class _TabBarCustomViewState extends State<TabBarCustomView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 9,
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
                  tabAlignment: TabAlignment.start,
                  isScrollable: true,
                  indicator: BoxDecoration(
                    color: Colors.red[800],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  labelColor: Colors.black,
                  dividerColor: Colors.black,
                  // ignore: prefer_const_literals_to_create_immutables
                  tabs: [
                    Tab(
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                        Icon(Icons.abc),
                        
                        GramediaText("Mantapadskljsdajlklajskd", fontStyle: UrbanistFont.mobile_text_2xs_medium)
                      ],),
                    ),
                    
                    Tab(
                      
                      text: "Mencoba",
                    ),
                    Tab(
                      
                      text: "Mencoba",
                    ),
                    Tab(
                      
                      text: "Mencoba",
                    ),
                    Tab(
                      
                      text: "Mencoba",
                    ),
                    Tab(
                      icon: Icon(
                        Icons.video_call,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.cabin,
                        color: Colors.black,
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.abc,
                        color: Colors.black,
                      ),
                    ),
                     
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: 50,
                color: Colors.white,
              ),
              Expanded(
                child: TabBarView(children: [
                  Container(child: Center(child: Text("One"),),),
                  Container(child: Center(child: Text("Two"),),),
                  Container(child: Center(child: Text("Three"),),),
                  Container(child: Center(child: Text("Four"),),),
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