import 'package:flutter/material.dart';
class MyListView extends StatefulWidget {
  @override
  _MyListViewState createState() => _MyListViewState();
}

class _MyListViewState extends State<MyListView> {
  final List<String> items = List.generate(50, (index) => 'Item $index');
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        controller: _scrollController,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return MyItemWidget(itemText: items[index]);
        },
      ),
    );
  }

  // Function to scroll to a specific index
  void jumpToIndex(int index) {
    if (_scrollController.hasClients) {
      _scrollController.jumpTo(index * 100.0); // Adjust the estimated item height based on your design
    }
  }

  @override
  void initState() {
    super.initState();
    // Example: Scroll to index 20 after 2 seconds (you can call this method based on your specific trigger)
    Future.delayed(Duration(seconds: 2), () {
      jumpToIndex(20);
    });
  }
}

class MyItemWidget extends StatelessWidget {
  final String itemText;

  const MyItemWidget({Key? key, required this.itemText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      color: Colors.blue,
      child: Center(
        child: Text(
          itemText,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}