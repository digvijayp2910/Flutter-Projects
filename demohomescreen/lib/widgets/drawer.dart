import 'package:demohomescreen/widgets/stepper.dart';
import 'package:demohomescreen/widgets/submenus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xff194C6C), // Replace with your colors
              Color(0xff2D6B77), // Replace with your colors
            ],
          ),
        ),
        // The color of the drawer background
        child: Stack(
          children: [
            Container(height: MediaQuery.of(context).size.height-70,
              child: ListView(
                children: <Widget>[
                  Container(child: Image.asset("assets/image4.png")),
                  DrawerItem(
                    icon: Icons.window_outlined,
                    text: 'Home',
                  ),
                  DrawerItem(
                    icon: Icons.business,
                    text: 'Master Data',
                    subMenus: ["a","b","c"],
                  ),
                  DrawerItem(
                    icon: Icons.person_outline,
                    text: 'Supplier Master',
                    subMenus: ["a"],
                  ),
                  DrawerItem(
                    icon: Icons.file_copy_outlined,
                    text: 'RFQs',
                    subMenus: ["a"],
                  ),
                  DrawerItem(
                    icon: Icons.file_copy_outlined,
                    text: 'EPAP',
                    subMenus: ["a"],
                  ),
                  DrawerItem(
                    icon: Icons.task_alt_outlined,
                    text: 'Approvals',
                    subMenus: ["a"],
                  ),
                  DrawerItem(
                    icon: Icons.people_alt_outlined,
                    text: 'User Management',
                    subMenus: ["a"],
                  ),
                  SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              left: 5,
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                CircleAvatar(
                  child: Icon(Icons.person), // Placeholder for user image
                  backgroundColor: Colors.white,
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Amol Savagave',
                        style: TextStyle(color: Colors.white)),
                    SizedBox(width: 20),
                    Text('Admin', style: TextStyle(color: Colors.white70)),
                  ],
                ),
                SizedBox(
                  width: 60,
                ),
                Icon(
                  Icons.logout,
                  color: Colors.white,
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerItem extends StatefulWidget {
  IconData icon;
  String text;
  List<String>? subMenus;

  DrawerItem(
      {super.key,
      required this.icon,
      required this.text,
       this.subMenus});

  @override
  State<DrawerItem> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<DrawerItem> {
  bool pressed = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white, // specify the color of the border
                        width: 2.0, // specify the width of the border
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(6)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Icon(
                        widget.icon,
                        color: Colors.white,
                        size: 18,
                      ),
                    )),
              ),
              Positioned(
                left: 40,
                child: Text(widget.text, style: TextStyle(color: Colors.white)),
              ),
              widget.subMenus != null ?
              Positioned(
                  right: 0,
                  child: InkWell(
                      onTap: () {
                        setState(() {
                          pressed = !pressed;
                        });
                      },
                      child: const Icon(
                        Icons.arrow_drop_down_sharp,
                        color: Colors.white,
                      ))): Offstage(),
            ],
          ),
          pressed
              ? SubMenu()
              : Offstage()
        ],
      ),
    );
  }
}
