import 'package:flutter/material.dart';
import 'package:twitter/main.dart';
import 'package:twitter/screens/signin_screen.dart';
import '../models/user.dart';
import '../providers/auth_state.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({super.key});

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> {

  @override
  void initState() {
    super.initState();
    getAsync();
  }

  User? user;

  Future<void> getAsync() async {

    try {
      user = await Auth().getCurrentUserModel();
    } catch (e) {
      print(e);
    }

    if (mounted) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (user == null) return Center(child: CircularProgressIndicator());
    else {
      return Drawer(
        child: ListView(
          children: [
            Column(
              children: [
                DrawerHeader(
                  child: Align(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          alignment: AlignmentDirectional.topStart,
                          child: const CircleAvatar(
                              backgroundImage: NetworkImage(
                                  'https://www.communardo.com/wp-content/uploads/2017/01/User-Profiles_701x701.png'),
                              radius: 30.0,
                            ),

                        ),
                         Container(
                           margin: const EdgeInsets.only(top: 5),
                           alignment: AlignmentDirectional.topStart,
                           child: Text(
                             user!.displayName,
                             style: const TextStyle(
                               color: Colors.grey,
                               fontSize: 20,
                             ),
                           ),
                         ),
                        Container(
                          margin: const EdgeInsets.only(top: 2),
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            user!.userName,
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 17,
                            ),
                          ),
                        ),
                        Container(
                          alignment: AlignmentDirectional.topStart,
                          margin: const EdgeInsets.only(top: 9),
                          child: Row(
                            children: [
                              Text('${user!.followers} Followers'),
                              const SizedBox(width: 10),
                              Text('${user!.following} Following'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
             ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Profile'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.notes),
            title: const Text('Lists'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.bookmark),
            title: const Text('Bookmark'),
            onTap: () => {},
          ),
          ListTile(
            leading: const Icon(Icons.flash_on_sharp),
            title: const Text('Moments'),
            onTap: () => {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Settings and privacy',
                style: TextStyle(
                fontWeight: FontWeight.bold
                )
               ),
            onTap: () => {},
          ),
          ListTile(
            title: const Text('Help Center',
                style: TextStyle(
                fontWeight: FontWeight.bold,
                )),
            onTap: () => {},
          ),
            const Divider(),
            ListTile(
              title: const Text('Logout',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),),
              onTap: () {
                Auth().logout();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SignIn()),
                );
              }
            ),
          ],
        ),
      );
    }

  }
}
