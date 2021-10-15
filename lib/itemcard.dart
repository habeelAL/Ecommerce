import 'package:flutter/material.dart';
import 'package:settings_ui/data.dart';

class ItemCard extends StatelessWidget {
  final ItemData item;

  const ItemCard({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: item.backgroundColor,
      ),
      height: 180,
      width: double.infinity,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: 120,
                    width: 140,
                    child: Hero(
                      tag: "${item.id}",
                      child: Image.asset(
                        item.image,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  text: TextSpan(
                    text: item.name,
                    style: Theme.of(context).textTheme.headline4,
                    children: <TextSpan>[
                      TextSpan(
                        style: Theme.of(context).textTheme.caption,
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("\$\ ${item.price}",
                        style: Theme.of(context).textTheme.headline4),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
