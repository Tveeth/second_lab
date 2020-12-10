
import 'package:first_app/models/delivery.dart';
import 'package:first_app/resources/app_strings.dart';
import 'package:first_app/ui/views/delivery_picture.dart';
import 'package:flutter/material.dart';

import 'full_screen_picture.dart';
class DeliveryPage extends StatelessWidget {

  final Delivery delivery;



  const DeliveryPage({
    Key key,
    @required this.delivery,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: _buidBackButton(context),
        title: Text(AppStrings.deliveryInfoPageTitle),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: _buildPageContent(context),
      ),
    );
  }

  Widget _buidBackButton(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }




  Widget _buildPageContent(BuildContext context) {
    return Column(
      children: [
        _buildContactPicture(context,delivery),
        SizedBox(height: 10.0),
        _buildId(),
        SizedBox(height: 10.0),
        _buildAddress(),
        SizedBox(height: 10.0),
        _buildFullName(),
        SizedBox(height: 10.0),
        _buildPhoneNumber(),
        SizedBox(height: 10.0),
        _buildDescription(),
        SizedBox(height: 10.0),
        _buildCost(),
        SizedBox(height: 20.0),
        _buildTime(),
      ],
    );
  }

 /* Widget _buildContactPicture() {
    return Center(
        child: DeliveryPicture(
          tag: delivery.uniqueTag,
          assetPath: delivery.imageAssetPath,
          size: 150.0,
        )
    );
  }*/

 Widget _buildContactPicture(BuildContext context, Delivery delivery) {
    return Center(
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FullScreenPicture(app: delivery)),
          );
        },

        child: DeliveryPicture(
          tag: delivery.uniqueTag,
          assetPath: delivery.imageAssetPath,
          size: 150.0,
        ),
      ),
    );
  }

  Widget _buildPhoneNumber() {
    return Text(delivery.phoneNumber, style: TextStyle(
      fontSize: 18.0,
      fontStyle: FontStyle.italic,
      color: Colors.black45,
    ),
    );
  }


  Widget _buildFullName() {
    return Text(delivery.fullName,
      style: TextStyle(
        fontSize: 19.0,
        color: Colors.black45,
        fontWeight: FontWeight.bold,
      ),
    );
  }


  Widget _buildAddress() {
    return Text(delivery.address,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
      ),
    );
  }

  Widget _buildId(){
    return Text(delivery.id,
      style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 25.0,
    ),
    );
  }

  Widget _buildDescription() {
    return Text(delivery.description,
      style: TextStyle(
        fontSize: 18.0,
        fontStyle: FontStyle.italic,
        color: Colors.black54,
        fontWeight: FontWeight.bold,
      ),
    );
  }


  Widget _buildCost(){
    return Text(delivery.cost,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        fontStyle: FontStyle.italic,
        color: Colors.grey,
      ),
    );
  }


  Widget _buildTime(){
    return Text(delivery.time,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25.0,
        fontStyle: FontStyle.italic,
        color: Colors.grey,
      ),
    );
  }

}




