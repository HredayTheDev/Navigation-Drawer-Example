import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation_drawer/screens/home.dart';
import 'package:navigation_drawer/screens/profile.dart';
import 'default.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      // home: Scaffold(
      //   appBar: AppBar(
      //     title: Text("This Is Navigation Drawer"),
      //   ),
      // ),
    );
  }
}

var indexClicked = 0;

class MainPage extends StatefulWidget {
  // const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final pages = [
   Profile(),
   Home(),
    Center(
      child: Text("Home"),
    ),
    Center(
      child: Text("Contact Us"),
    ),
    Center(
      child: Text("Settings"),
    )
  ];

  Function upadteState(int index) {
    return () {
      setState(() {
        indexClicked = index;
      });
      Navigator.pop(context);
    };
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer Example"),
      ),
      body: pages[indexClicked],
      //endDrawer: Drawer(),
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/images/drawer.jpg")),
              ),
              padding: EdgeInsets.zero,
              child: Container(
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    CircleAvatar(
                      radius: 42,
                      backgroundImage: AssetImage(
                        "assets/images/profile.jpg",
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Hello Mr. Hreday",
                      style: GoogleFonts.sanchez(
                          fontSize: 15,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "hredaysagar@gmail.com",
                      style: GoogleFonts.sansita(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 8),
                children: [
                  AppDrawerTile(
                    index: 0,
                    onTap: upadteState(0),
                  ),
                  AppDrawerTile(
                    index: 1,
                    onTap: upadteState(1),
                  ),
                  AppDrawerTile(
                    index: 2,
                    onTap: () {
                      setState(() {
                        indexClicked = 2;
                      });
                      Navigator.pop(context);
                    },
                  ),
                  AppDrawerTile(
                    index: 3,
                    onTap: upadteState(3),
                  ),
                  AppDrawerTile(
                    index: 4,
                    onTap: upadteState(4),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AppDrawerTile extends StatelessWidget {
  const AppDrawerTile({
    Key key,
    @required this.index,
    @required this.onTap,
  }) : super(key: key);

  final int index;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      selected: indexClicked == index,
      selectedTileColor: Default.selectedTileColor,
      leading: Icon(
        Default.drawerIcon[index],
        size: 32,
        
        color: indexClicked == index
            ? Default.drawerItemSelectedColor
            : Default.drawerItemColor,
      ),
      title: Text(
        Default.drawerItemText[index],
        style: GoogleFonts.sanchez(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          color: indexClicked == index
              ? Default.drawerItemSelectedColor
              : Default.drawerItemColor,
        ),
      ),
    );
  }
}
