import 'package:flutter/material.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainWidget(),
    );
  }
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [
            Tab(text: "Camera"),
            Tab(text: "Chats"),
            Tab(text: "Status"),
            Tab(text: "Calls"),
          ]),
          leading: Icon(Icons.person),
          title: Text("Chats"),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.green,
        ),
        body: TabBarView(
          children: [
            buildCamerapage(),
            buildchatpage(),
            buildStatus(),
            buildCalls(),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  Center buildCalls() => Center(child: Text("Calls"));

  Center buildStatus() => Center(child: Text("Status"));

  Center buildchatpage() {
    return Center(
      child: ListView(
        children: [
          _listItem(),
          _listItem(),
          _listItem(),
          _listItem(),
          _listItem(),
          _listItem(),
          _listItem(),
          _listItem(),
          _listItem(),
          _listItem(),
          _listItem(),
        ],
      ),
    );
  }

  ListTile _listItem() {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.access_alarm),
      ),
      title: Text("KYTH ...."),
      subtitle: Text("This is sub ...."),
      trailing: Icon(Icons.mic),
    );
  }

  Widget buildCamerapage() {
    return Scaffold(
      body: Center(
        child: IconButton(
          icon: Icon(
          Icons.camera_alt,
        size: 60, 
        ),
        onPressed: (){
          print("KYTH");
        },
       ) ),
    );
  }
}
