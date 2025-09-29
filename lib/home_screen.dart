import 'package:first_app/profile_subscreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int pageNow = 0;
  List <Widget> pages = [
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("Categories"),
    ),
    ProfileSubscreen(),
    Center(
      child: Text("Settings"),
    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: pages[pageNow]),
      bottomNavigationBar: Container(
        color: Colors.blue,
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(onTap: () {
              setState(() {
                pageNow = 0;
              });
            } , child: NavItem( title: 'Home', icon: Icons.home, isActive: pageNow == 0)),

            GestureDetector(onTap: () {
              setState(() {
                pageNow = 1;
              });
            } , child: NavItem(title: 'Categories', icon: Icons.collections, isActive: pageNow == 1)),

            GestureDetector(onTap: () {
              setState(() {
                pageNow = 2;
              });
            } , child: NavItem(title: 'Account', icon: Icons.person, isActive: pageNow == 2)),

            GestureDetector(onTap: () {
              setState(() {
                pageNow = 3;
              });
            } , child: NavItem(title: 'Settings', icon: Icons.settings, isActive: pageNow == 3))
          ],
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final bool isActive;
  final String title;
  final IconData icon;

  const NavItem({super.key,required this.title, required this.icon, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: 65,
        height: 65,
        padding: EdgeInsets.all(10),
        decoration: (isActive) ? BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.yellow
        ) : BoxDecoration(),
        child:
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon,color: isActive ? Colors.black : Colors.white),
              FittedBox(child: Text(title,style: TextStyle(color: Colors.white)))
            ],
          )
      )
     ;
  }
}
    