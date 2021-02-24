import 'package:flutter/material.dart';

class PokemonAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 300,
      elevation: 0,
      backgroundColor: Colors.transparent,
      title: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Pokemon',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              height: 38,
              child: Opacity(
                opacity: 0.50,
                child: TextField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(
                      Icons.mic,
                      color: Colors.black,
                    ),
                    filled: true,
                    fillColor: Colors.grey[400],
                    labelText: 'Search',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        borderSide: BorderSide.none),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
