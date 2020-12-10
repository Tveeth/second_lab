import 'package:first_app/mocks/delivery_mock.dart';
import 'package:first_app/models/delivery.dart';
import 'package:first_app/resources/app_image_assets.dart';
import 'package:first_app/resources/app_strings.dart';
import 'package:first_app/ui/views/delivery_tile.dart';
import 'package:flutter/material.dart';
import 'package:first_app/ui/pages/termOfUse.dart';

import 'search_page.dart';

class HomePage extends StatefulWidget {


  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.info),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => CheckboxOnchangedListener()));
          },
        ),
        title: Text(AppStrings.homePageTitle),
        actions:<Widget> [
          Padding(
              padding: EdgeInsets.only(right: 20.0),
          child: IconButton(
            icon: Icon(Icons.info),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
              },
          ),)
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: DeliveryMock.delivery
              .map((delivery) => DeliveryTile(delivery: delivery))
              .toList(),
        ),

      ),
    );
  }
}
