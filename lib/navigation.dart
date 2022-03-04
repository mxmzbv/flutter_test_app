import 'package:flutter/material.dart';

class NavigationX extends StatefulWidget {
  NavigationX({Key? key}) : super(key: key);

  @override
  State<NavigationX> createState() => _NavigationXState();
}

class _NavigationXState extends State<NavigationX> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                  decoration: BoxDecoration(color: Colors.blue),
                  child: Container(
                    height: 150,
                    child: Text(
                      'Navigation',
                    ),
                  )),
              ListTile(
                leading: Icon(Icons.account_box),
                title: Text('Account'),
              ),
              ListTile(
                leading: Icon(Icons.message),
                title: Text('Messenger'),
              ),
              ListTile(
                leading: Icon(Icons.group),
                title: Text('Communities'),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app),
                title: Text('Exit'),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text('Hello'),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
            TextButton(
              onPressed: () {},
              child: const Text('Profile'),
              style: buttonStyle,
            ),
          ],
        ),
      ),
    );
  }
}
