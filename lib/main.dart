import 'package:flutter/material.dart';
import 'package:project_uts/screens/simple_map.dart';
import 'package:project_uts/screens/home_screen.dart';

void main() => runApp(MaterialApp(
      theme: ThemeData.light(),
      title: "Rent Car",
      home: bottomNavbar(),
    ));

// Login
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (ctx) => Products(),
//       builder: (context, child) => MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: LoginPage(),
//         routes: {
//           AddProductPage.route: (ctx) => AddProductPage(),
//           EditProductPage.route: (ctx) => EditProductPage(),
//         },
//       ),
//     );
//   }
// }

//end login
class bottomNavbar extends StatefulWidget {
  const bottomNavbar({Key? key}) : super(key: key);

  @override
  State<bottomNavbar> createState() => _bottomNavbarState();
}

class _bottomNavbarState extends State<bottomNavbar> {
  int _selectedIndex = 0;

  final screens = [
    HomeScreen(),
    SimpleMapScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: screens.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.location_city), label: 'Location')
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
