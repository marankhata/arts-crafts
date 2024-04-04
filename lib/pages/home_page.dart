import 'package:ecommerce_app/components/bottom_nav_bar.dart';
import 'package:ecommerce_app/pages/about_page.dart';
import 'package:ecommerce_app/pages/cart_page.dart';
import 'package:ecommerce_app/pages/category_page.dart';
import 'package:ecommerce_app/pages/intro_page.dart';
import 'package:ecommerce_app/pages/settings_page.dart';
import 'package:ecommerce_app/pages/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // this method will update our selected index
  // when the user taps on the bottom bar

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  //Pages to display

  final List<Widget> _pages = [
    // Shop Page
    const ShopPage(),

    // Cart Page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Padding(
              padding: EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.menu,
                color: Color.fromARGB(255, 9, 50, 111),
              ),
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey.shade300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //LOGO
            Column(
              children: [
                DrawerHeader(
                  child: Image.asset(
                    'lib/images/paint.png',
                    width: 100,
                  ),
                ),

                //OTHER PAGES TO NAVIGATE TO
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.home,
                      color: Colors.black,
                    ),
                    title: const Text(
                      'Store',
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                      );
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.category,
                      color: Colors.black,
                    ),
                    title: const Text(
                      'Categories',
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CategoryPage(),
                        ),
                      );
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.settings,
                      color: Colors.black,
                    ),
                    title: const Text(
                      'Settings',
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SettingsPage(),
                        ),
                      );
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.info,
                      color: Colors.black,
                    ),
                    title: const Text(
                      'About',
                      style: TextStyle(color: Colors.black),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => AboutPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.only(left: 25.0, bottom: 20.0),
              child: ListTile(
                leading: const Icon(
                  Icons.exit_to_app,
                  color: Colors.black,
                ),
                title: const Text(
                  'Exit',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  //Close the app
                  SystemNavigator.pop();
                },
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
    );
  }
}
