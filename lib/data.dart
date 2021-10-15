import 'package:flutter/material.dart';

class ItemData {
  int id;
  int available;
  String name;
  String vendor;
  String price;
  String image;
  Color backgroundColor;

  ItemData(
      {this.vendor,
      this.id,
      this.image,
      this.name,
      this.price,
      this.available,
      this.backgroundColor});
}

List<ItemData> itemsData = [
  ItemData(
    id: 1,
    vendor: "Himachal Pvt Ltd",
    name: "Potato",
    image: "assets/images/1.png",
    price: "30",
    available: 1,
    backgroundColor: Color(0xffebe5d2),
  ),
  ItemData(
      id: 2,
      vendor: "Organic farms",
      name: "Banana",
      image: "assets/images/2.png",
      price: "50",
      available: 1,
      backgroundColor: Color(0xfff2e359)),
  ItemData(
      id: 3,
      vendor: "Mallikarjuna farms",
      name: "Drumsticks",
      image: "assets/images/3.png",
      price: "20",
      available: 0,
      backgroundColor: Color(0xff798069)),
  ItemData(
      id: 4,
      vendor: "Nagpur farms",
      name: "Orange",
      image: "assets/images/4.png",
      price: "25",
      available: 1,
      backgroundColor: Color(0xffdfab72)),
];
