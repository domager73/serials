import 'package:flutter/material.dart';
import 'package:serials/widgets/serial_list/serial_list_widget.dart';

class MainScreenWidget extends StatefulWidget {
  MainScreenWidget({Key? key}) : super(key: key);

  @override
  _MainScreenWidgetState createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'News',
    ),
    SerialListWidget(),
    Text(
      'Movie',
    ),
  ];

  int _selecrtedTad = 1;

  void onSelectTab(int index) {
    if (_selecrtedTad == index) return;
    setState(() {
      _selecrtedTad = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Serial'),
          ],
        ),
      ),
      body: Center(
        child: _widgetOptions[_selecrtedTad],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selecrtedTad,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'News'),
          BottomNavigationBarItem(
            icon: Icon(Icons.tv),
            label: 'Serial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.movie_filter),
            label: 'Movie',
          ),
        ],
        onTap: onSelectTab,
      ),
    );
  }
}
