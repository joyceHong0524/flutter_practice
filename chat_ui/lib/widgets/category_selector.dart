/**
 * @author Joyce Hong
 * @email soja0524@gmail.com
 * @create date 2019-11-13 16:11:14
 * @modify date 2019-11-13 16:11:14
 * @desc Widget of category_selector. Stateful widget because it needs to indicate where the screen at.
 */

import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int selectedIndex = 0;
  final List<String> categories = ['Messages', 'Online', 'Groups', 'Requests'];

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
                padding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 30.0,
                ),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color:
                        index == selectedIndex ? Colors.white : Colors.white60,
                    letterSpacing: 1.2,
                    fontSize: 24.0,
                  ),
                ),
              ),
            );
          },
        ));
  }
}
