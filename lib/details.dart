import 'package:flutter/material.dart';
import 'package:settings_ui/data.dart';

class DetailScreen extends StatefulWidget {
  final ItemData itemData;
  final String tag;
  DetailScreen({this.itemData, this.tag});
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: widget.itemData.backgroundColor,
                      ),
                      child: Hero(
                          tag: "${widget.itemData.id}",
                          child: Image.asset(widget.itemData.image)),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_back_ios_rounded),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  widget.itemData.name,
                  style: Theme.of(context).textTheme.headline1,
                ),
                SizedBox(height: 20),
                Text(
                  "Availability: ${widget.itemData.available}",
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(height: 20),
                Text("Vendor", style: Theme.of(context).textTheme.headline5),
                SizedBox(
                  height: 5,
                ),
                Text(widget.itemData.vendor,
                    style: Theme.of(context).textTheme.headline2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String check(int available) {
  if (available == 1) {
    return "In Stock";
  } else {
    return "Out of Stock";
  }
}
