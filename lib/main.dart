import 'package:flutter/material.dart';
import 'package:interv_page/assets/app_bar_title.dart';
import 'package:interv_page/pages/center_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainScreen(), debugShowCheckedModeBanner: false);
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
      BottomNavigationBarItem(
        icon: Icon(
          Icons.bar_chart_outlined,
          size:
              _selectedIndex == 0
                  ? MediaQuery.of(context).size.height * 0.065
                  : MediaQuery.of(context).size.height * 0.05,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.add_circle_rounded,
          size:
              _selectedIndex == 1
                  ? MediaQuery.of(context).size.height * 0.065
                  : MediaQuery.of(context).size.height * 0.05,
        ),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.list_rounded,
          size:
              _selectedIndex == 2
                  ? MediaQuery.of(context).size.height * 0.065
                  : MediaQuery.of(context).size.height * 0.05,
        ),
        label: '',
      ),
    ];

    return Scaffold(
      appBar: AppBar(title: AppBarTitle()),
      body: _pageOptions[_selectedIndex],
      bottomNavigationBar: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          BottomNavigationBar(
            items: items,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            iconSize: MediaQuery.of(context).size.height * 0.06,
            type: BottomNavigationBarType.fixed,
          ),
          Positioned(
            bottom: 7,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width / items.length,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              margin: EdgeInsets.only(
                left:
                    _selectedIndex *
                    (MediaQuery.of(context).size.width / items.length),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
