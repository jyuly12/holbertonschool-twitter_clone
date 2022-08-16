import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget{
  const NotificationsScreen({ Key? key }) : super(key: key);

@override
  State<NotificationsScreen> createState() => NotificationState();
}

class NotificationState extends State<NotificationsScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: const Padding(
          padding: EdgeInsets.all(5),
          child: CircleAvatar(
            foregroundImage:NetworkImage(
                        'https://www.communardo.com/wp-content/uploads/2017/01/User-Profiles_701x701.png'
                        ),
            maxRadius: 30,
          ),
        ),
        
        title:  const Text(
          'Notifications',
          style: TextStyle(
            color: Color(0xFF696767),
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings_outlined,
                color: Colors.lightBlue,
              ))
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Text(
          'No Notifications Yet',
          textAlign: TextAlign.end,
          style: TextStyle(
            fontFamily: 'Raleway-Regular',
            fontWeight: FontWeight.w500,
            fontSize: 27,
          ),
      ),
        )
      
    );
  }
}