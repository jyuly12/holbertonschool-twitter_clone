import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  final String name;
  final String username;
  final String post;
  final String imgUrl;
  final bool isVerified;

  const PostWidget({
    super.key,
    required this.name,
    required this.username,
    required this.post,
    required this.imgUrl,
    required this.isVerified,
  });

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
      title: Row(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 5, 5),
            child:
              Text(
                name,
                style: const TextStyle(
                  fontFamily: 'Roboto-Regular',
                  fontWeight: FontWeight.w800,
                  fontSize: 16,
                  color: Colors.black,
                )
                
              ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 5, 5),
            child:
            Icon(
              Icons.verified_rounded,
              size: 15,
              color: isVerified ? Colors.lightBlue : Colors.transparent,
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(0, 5, 5, 5),
            child: Text(
              username,
              style: const TextStyle(
                fontFamily: 'Roboto-Regular',
                fontWeight: FontWeight.w400,
                fontSize: 13,
                color: Colors.grey,
              )
            ),
          ),

          Container(
            alignment: AlignmentDirectional.centerEnd,
            child:
            const Icon(
              Icons.more_horiz_outlined,
              size: 20,
              color: Color(0xFF222222),
            ),
          ),
        ],
      ),
      subtitle: Column(
        children: [
          Text(
            post,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Colors.black,
            ),
          ),
          Row(

            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: const Icon(
                  Icons.mode_comment_outlined,
                  size: 20,
                  color: Color(0xFFA09E9E),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                child:
                const Text('3'),
              ),
              Container(
                child: const Icon(
                  Icons.repeat_rounded,
                  size: 20,
                  color: Color(0xFFA09E9E),
                ),
              ),
              Container(
                margin: const EdgeInsets.fromLTRB(5, 0, 10, 0),
                child:
                const Text('2'),
              ),
              Container(
                child:
                  Icon(
                    Icons.favorite,
                    size: 20,
                    color: Colors.red,
                  ),
              ),
              Container(
                
                margin: const EdgeInsets.fromLTRB(5, 0, 40, 0),
                child:
                  const Text('2'),
              ),
              Container(
                alignment: AlignmentDirectional.centerEnd,
                child: const Icon(
                  Icons.share,
                  size: 20                                                           ,
                  color: Color(0xFFA09E9E),
                ),
                //height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}

