import 'package:flutter/material.dart';
import 'package:interv_page/components/app_bar_title.dart';
import 'package:interv_page/pages/center_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: Colors.white),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.deepPurple,
          unselectedItemColor: Colors.deepPurple[200],
          selectedIconTheme: IconThemeData(
            size: MediaQuery.of(context).size.height * 0.065,
          ),
          unselectedIconTheme: IconThemeData(
            size: MediaQuery.of(context).size.height * 0.05,
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 1;

  final List<Widget> _pageOptions = <Widget>[
    Center(child: Text('Page Left')),
    CenterPage(),
    Center(child: Text('Page Right')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> items = <BottomNavigationBarItem>[
      getBottomNavBarItem(context, Icons.bar_chart_outlined, 0),
      getBottomNavBarItem(context, Icons.add_circle_rounded, 1),
      getBottomNavBarItem(context, Icons.list_rounded, 2),
    ];

    return Scaffold(
      appBar: AppBar(title: AppBarTitle()),
      body: _pageOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: items,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

  BottomNavigationBarItem getBottomNavBarItem(
    BuildContext context,
    IconData iconData,
    int triggerIndex,
  ) {
    return BottomNavigationBarItem(icon: Icon(iconData), label: '');
  }
}
