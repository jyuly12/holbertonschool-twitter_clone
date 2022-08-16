import 'package:flutter/material.dart';
import 'package:twitter/widgets/users_search_results_widget.dart';
import 'package:twitter/assets/userData.dart';

class SearchScreen extends StatefulWidget{
  const SearchScreen({ Key? key }) : super(key: key);

@override
  State<SearchScreen> createState() => SearchState();
}

class SearchState extends State<SearchScreen> {
  late TextEditingController _searchcontroller = TextEditingController();
  @override
  void initState() {
    _searchcontroller = _searchcontroller;
    super.initState();
  }

  @override
  void dispose() {
    _searchcontroller = _searchcontroller;
    super.dispose();
  }

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
        
        title: Container(
          height: 40,
          child: TextField(
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade100,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                    borderSide: BorderSide.none),
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade500),
                hintText: "Search..."),
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
      body: SafeArea(child: ListView.builder(
        itemCount: userList.length,
        itemBuilder: (context, index) {
          return UsersSearchResultsWidget(
            name: userList[index]['name'],
            imgUrl: userList[index]['imgUrl'],
            username: userList[index]['username'],
            bio: userList[index]['bio'],
            isVerified: userList[index]['isVerified'],
          );
        },
      )),
    );
  }
}