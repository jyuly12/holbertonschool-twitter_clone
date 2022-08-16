import 'package:flutter/material.dart';
import 'package:twitter/screens/chats_screen.dart';
import 'package:twitter/screens/home_screen.dart';
import 'package:twitter/screens/notifications_screen.dart';
import 'package:twitter/screens/search_screen.dart';

class BarMenu extends StatefulWidget{
  const BarMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<BarMenu> createState() => BarState();
}

class BarState extends State<BarMenu> {
  int pageIndex = 0;
  final pages = [
    const HomeScreen(),
    const SearchScreen(),
    const NotificationsScreen(),
    const ChatsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }
  
  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home,
                    color: Colors.blue,
                    size: 35,
                  )
                : const Icon(
                    Icons.home,
                    color: Colors.grey,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.search,
                    color: Colors.blue,
                    size: 35,
                  )
                : const Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.notifications,
                    color: Colors.blue,
                    size: 35,
                  )
                : const Icon(
                    Icons.notifications,
                    color: Colors.grey,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.mail,
                    color: Colors.blue,
                    size: 35,
                  )
                : const Icon(
                    Icons.mail,
                    color: Colors.grey,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}
  