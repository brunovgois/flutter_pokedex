import 'package:flutter/material.dart';

class PokemonBottomNavigationBar extends StatefulWidget {
  PokemonBottomNavigationBar({Key key}) : super(key: key);

  @override
  _PokemonBottomNavigationBarState createState() =>
      _PokemonBottomNavigationBarState();
}

class _PokemonBottomNavigationBarState
    extends State<PokemonBottomNavigationBar> {
  int _currentBottomTabBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      currentIndex: _currentBottomTabBarIndex,
      items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.pets), label: 'Pokemon'), //temp icon
        BottomNavigationBarItem(
            icon: Icon(Icons.track_changes), label: 'Moves'), //temp icon
        BottomNavigationBarItem(icon: Icon(Icons.bug_report), label: 'Itens'),
      ],
      onTap: (index) {
        print(index);
        setState(() {
          _currentBottomTabBarIndex = index;
        });
      },
    );
  }
}
