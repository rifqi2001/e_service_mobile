import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _filter = TextEditingController();
  String _searchText = "";

  _SearchBarState() {
    _filter.addListener(() {
      setState(() {
        _searchText = _filter.text;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller: _filter,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search),
          hintText: 'Cari...',
        ),
      ),
    );
  }
}
