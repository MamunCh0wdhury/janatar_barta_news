import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
        title: Text(
          'Home',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: const [
          Icon(Icons.notifications_none),
        ],
      ),
      body: Column(
        children: [
          TabBar(controller: tabController, tabs: const [
            Tab(
              text: "Trending",
            ),
            Tab(
              text: "Short",
            ),
            Tab(
              text: "World",
            ),
          ]),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            height: 300,
            child: TabBarView(controller: tabController, children: const [
              Center(child: Text('Trending News')),
              Center(child: Text('Short News')),
              Center(child: Text('World News')),
            ]),
          ),
        ],
      ),


    );
  }
}
