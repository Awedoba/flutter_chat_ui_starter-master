import 'package:flutter/material.dart';

class CategorySeletor extends StatefulWidget {
  CategorySeletor({Key key}) : super(key: key);

  @override
  _CategorySeletorState createState() => _CategorySeletorState();
}

class _CategorySeletorState extends State<CategorySeletor> {
  int selectedIndex = 0;
  final List<String> categories = ['Mesages', 'Online', 'Groups', 'Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Text(
                categories[index],
                style: TextStyle(
                    fontSize: 20,
                    color:
                        index == selectedIndex ? Colors.white : Colors.white60,
                    letterSpacing: 1.5,
                    fontWeight: FontWeight.bold),
              ),
            ),
          );
        },
      ),
    );
  }
}
