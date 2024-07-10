import 'package:flutter/material.dart';
import 'package:training_session/flutter/simple_list.dart';

class TopTabView extends StatelessWidget {
  const TopTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TabViews"),
      ),
      body: DefaultTabController(
        length: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.black,
              child: TabBar(
                splashFactory: NoSplash.splashFactory,
                indicatorColor: Colors.red,
                dividerColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                labelColor: Colors.blue,
                indicator: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(12)),
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
