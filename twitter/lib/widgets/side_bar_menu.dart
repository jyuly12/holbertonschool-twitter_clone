import 'package:flutter/material.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideBarMenu> createState() => MState();
}

class MState extends State<SideBarMenu> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext action) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://www.communardo.com/wp-content/uploads/2017/01/User-Profiles_701x701.png'
                        ),
                        maxRadius: 30,
                        ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  child: Row(
                    children: <Widget>[
                      Text('User Name',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20,
                        ),
                      ),
                    ],
                  ),),
                Row(
                  children: <Widget>[
                   Text('0 Followers'),
                   SizedBox(width: 7),
                   Text('0 Following'),],
                ),],),),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Profile'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.notes),
            title: Text('Lists'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.bookmark),
            title: Text('Bookmark'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.flash_on_sharp),
            title: Text('Moments'),
            onTap: () => {},
          ),
          const Divider(),
          ListTile(
            title: Text(
              'Settings and privacy',
              style: TextStyle(
                fontWeight: FontWeight.bold
                )
               ),
            onTap: () => {},
          ),
          ListTile(
            title: Text(
              'Help Center', style: TextStyle(
                fontWeight: FontWeight.bold,
                )),
            onTap: () => {},
          ),
          ListTile(
            title: Text(
              'Logout',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                )),
            onTap: () => {},
          ),],),);
  }
}