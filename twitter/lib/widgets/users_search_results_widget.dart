import 'package:flutter/material.dart';

class UsersSearchResultsWidget extends StatelessWidget{
  final String name;
  final String username;
  final String bio;
  final String imgUrl;
  final bool isVerified;

  const UsersSearchResultsWidget({
    Key? key,
    required this.name,
    required this.username,
    required this.bio,
    required this.imgUrl,
    required this.isVerified
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Column(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(imgUrl),
          ),
        ],
      ),
      title: Text(
        name,
        style: const TextStyle(
          fontFamily: 'Roboto-Regular',
          fontWeight: FontWeight.w800,
          fontSize: 18,
        ),
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            bio,
            style: const TextStyle(
              fontFamily: 'Roboto-Light',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          Text(
            username,
            style: const TextStyle(
              fontFamily: 'Roboto-Light',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Colors.grey           
              ),
          ),
        ],
      ),
      trailing: Column(
        children: [
          Icon(
            Icons.verified_rounded,
            size: 15,
            color: isVerified ? Colors.lightBlue : Colors.transparent,
          ),
        ],
      ),
    );
  }
}