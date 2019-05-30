import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './demo/bottom_navigation_bar_demo.dart';
import './demo/listview_demo.dart';
import './demo/basic_demo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          // leading: IconButton(
          //   icon: Icon(Icons.menu),
          //   tooltip: 'Navigation',
          //   onPressed: ()=>debugPrint('Navigation button pressed'),
          // ),
          title: Text('Example'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Navigation',
              onPressed: () => debugPrint('Search button pressed'),
            ),
          ],
          elevation: 0.0,
          bottom: TabBar(
            unselectedLabelColor: Colors.black38,
            indicatorColor: Colors.black54,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 1.0,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.local_florist)),
              Tab(icon: Icon(Icons.change_history)),
              Tab(icon: Icon(Icons.directions_bike)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            BasicDemo(),
            Icon(Icons.directions_bike, size: 128.0, color: Colors.black12),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://resources.ninghao.org/images/wanghao.jpg'),
                ),
                accountName: Text('Kevin',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                accountEmail: Text('kevin@qq.com'),
                decoration: BoxDecoration(
                    color: Colors.yellow[400],
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://resources.ninghao.org/images/childhood-in-a-picture.jpg'),
                        fit: BoxFit.cover,
                        colorFilter: ColorFilter.mode(
                            Colors.yellow[400].withOpacity(0.6),
                            BlendMode.hardLight))),
              ),
              ListTile(
                  title: Text('Messgae', textAlign: TextAlign.right),
                  trailing: Icon(
                    Icons.message,
                    color: Colors.black12,
                    size: 22.0,
                  ),
                  onTap: () => Navigator.pop(context)),
              ListTile(
                title: Text('Favorite', textAlign: TextAlign.right),
                trailing: Icon(
                  Icons.favorite,
                  color: Colors.black12,
                  size: 22.0,
                ),
                onTap: () => Navigator.pop(context),
              ),
              ListTile(
                title: Text('Setting', textAlign: TextAlign.right),
                trailing: Icon(
                  Icons.settings,
                  color: Colors.black12,
                  size: 22.0,
                ),
                onTap: () => Navigator.pop(context),
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBarDemo(),
      ),
    );
  }
}
