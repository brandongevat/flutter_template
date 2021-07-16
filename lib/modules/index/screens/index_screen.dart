import 'package:flutter/material.dart';
import 'package:flutter_template/modules/index/screens/home_screen.dart';
import 'package:flutter_template/modules/index/screens/profile_screen.dart';

class IndexScreen extends StatefulWidget {
  final int initialPage;
  const IndexScreen({Key? key, this.initialPage = 1}) : super(key: key);

  @override
  _IndexScreenState createState() => _IndexScreenState();
}

class _IndexScreenState extends State<IndexScreen> {
  int _selectedPage = 1;

  List<Widget> _pageOptions = [
    HomeScreen(),
    ProfileScreen(),
  ];

  @override
  void initState() {
    _selectedPage = widget.initialPage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedPage,
        children: _pageOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPage,
        unselectedIconTheme: Theme.of(context).iconTheme,
        selectedItemColor: Theme.of(context).toggleableActiveColor,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(
            () {
              _selectedPage = index;
            },
          ); //
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Profile"),
        ],
      ),
    );
  }
}
