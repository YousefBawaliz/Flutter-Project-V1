import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CircleAvatar(
            radius: 60,
            foregroundImage: NetworkImage(
                "https://thumbs.dreamstime.com/b/user-icon-trendy-flat-style-isolated-grey-background-user-symbol-user-icon-trendy-flat-style-isolated-grey-background-123663211.jpg"),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 30,
            width: 250,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.white)),
              onPressed: () {},
              child: Text(
                "Sign In",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 60,
          ),
          GestureDetector(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.rate_review,
                    color: Colors.white60,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "rate the app",
                    style: TextStyle(color: Colors.white60, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.email,
                    color: Colors.white60,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "email",
                    style: TextStyle(color: Colors.white60, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.settings,
                    color: Colors.white60,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Setting",
                    style: TextStyle(color: Colors.white60, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.mobile_screen_share,
                    color: Colors.white60,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Call us",
                    style: TextStyle(color: Colors.white60, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          GestureDetector(
            // onTap: () async {
            //   await FirebaseAuth.instance.signOut();

            //   Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            //     return Login();
            //   }));
            // },
            child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Icon(
                    Icons.logout,
                    color: Colors.white60,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "Logout",
                    style: TextStyle(color: Colors.white60, fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
