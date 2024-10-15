import 'package:flutter/material.dart';
import 'package:training_session/flutter/simple_list.dart';

class TopTabView extends StatelessWidget {
  const TopTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TabViews"),
      ),
      body: const DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TabBar(
              splashFactory: NoSplash.splashFactory,
              dividerColor: Colors.transparent,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.black,
              indicator: BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.black, width: 2.0)),
              ),
              tabs: [
                Tab(
                    icon: Icon(
                      Icons.home,
                    ),
                    text: "Home"),
                Tab(
                    icon: Icon(
                      Icons.list,
                    ),
                    text: "Simple List"),
              ],
            ),
            Expanded(
                child: TabBarView(
                    children: [Center(child: Text("Home Page")), SimpleList()]))
          ],
        ),
      ),
    );
  }
}
