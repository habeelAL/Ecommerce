import 'package:flutter/material.dart';
import 'package:settings_ui/data.dart';
import 'package:settings_ui/details.dart';
import 'package:settings_ui/itemcard.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> _tags = ["All", "Fruit", "Vegetable"];
  int _selectedTag = 0;

  Widget _buildTags(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedTag = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          color: _selectedTag == index ? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          _tags[index],
          style: TextStyle(
            color: _selectedTag != index ? Colors.grey[400] : Colors.white,
            fontFamily: 'Poppins',
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Nuchange E-Commerce",
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  "Food",
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: _tags
                      .asMap()
                      .entries
                      .map((MapEntry map) => _buildTags(map.key))
                      .toList(),
                ),
                SizedBox(height: 25),
                _itemListView()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _itemListView() {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: itemsData.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                        itemData: itemsData[index],
                      ),
                    ),
                  );
                },
                child: ItemCard(
                  item: itemsData[index],
                ),
              ),
              SizedBox(
                height: 10,
              )
            ],
          );
        });
  }
}
