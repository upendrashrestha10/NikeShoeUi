import 'package:ecomerse_ui/components/bottom_nav_bar.dart';
import 'package:ecomerse_ui/pages/cart_page.dart';
import 'package:ecomerse_ui/pages/shop_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //this selected index is controll the bottom nav bar
  int _selectedIndex = 0;

  //this method will update our selected index
  //when the user tabs on the bottom bar
  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  //page to display
  final List<Widget> _page =[
    const ShopPage(),

  //cart page
    const CartPage(),
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index) ,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: Icon(Icons.menu, color: Colors.black,),
              onPressed: (){
                Scaffold.of(context).openDrawer();
              },
            );
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          children: [
            DrawerHeader(
              child: Image.asset("assets/images/nike.png", 
              color: Colors.white,),
              ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Divider(color: Colors.grey[800],),
            ),
          
          //other pages
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: ListTile(
                leading: Icon(Icons.home, color: Colors.white,),
                title: Text("Home",
                style: TextStyle(
                  color: Colors.white
                ),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: ListTile(
                leading: Icon(Icons.info, color: Colors.white,),
                title: Text("About",
                style: TextStyle(
                  color: Colors.white
                ),),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: ListTile(
                leading: Icon(Icons.logout, color: Colors.white,),
                title: Text("Logout",
                style: TextStyle(
                  color: Colors.white
                ),),
              ),
            ),
          ],
        ),
      ),
      body: _page[_selectedIndex],
    );
  }
}