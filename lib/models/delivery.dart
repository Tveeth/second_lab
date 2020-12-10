import 'package:flutter/cupertino.dart';

class Delivery {
  final String address;
  final String time;

  final String cost;
  final String id;
  final String description;

  final String imageAssetPath;

  final String name;
  final String lastName;
  final String phoneNumber;

  const Delivery({
    @required this.name,
    @required this.lastName,
    @required this.phoneNumber,
    @required this.address,
    @required this.time,
    @required this.cost,
    @required this.imageAssetPath,
    @required this.id,
    @required this.description,
  });

  String get fullName => "$name $lastName";

  String get uniqueTag => "$id$hashCode";
}
