import 'package:first_app/mocks/delivery_mock.dart';
import 'package:first_app/models/delivery.dart';
import 'package:first_app/ui/pages/delivery_page.dart';
import 'package:first_app/ui/views/delivery_picture.dart';
import 'package:first_app/ui/views/rounded_corners.dart';
import 'package:flutter/material.dart';

class DeliveryTile extends StatelessWidget {


  final Delivery _delivery;


  const DeliveryTile({
    Key key,
    @required Delivery delivery,
  }) : _delivery = delivery == null ? DeliveryMock.defaultDelivery: delivery,
        super(key: key);


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (_) => DeliveryPage(delivery: _delivery)),
        );
      },
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
            children: [
              DeliveryPicture(
                  tag: _delivery.uniqueTag,
                  assetPath: _delivery.imageAssetPath,
              ),
              SizedBox(width: 22),
              Expanded(
                child: _buildDeliveryShortInfo(),
              ),
            ],
        ),
      ),
    );
  }



  Widget _buildDeliveryShortInfo(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start ,
      children: [
        Text("${_delivery.id} ${_delivery.address}",
          style: TextStyle(
              fontSize: 18.0,
          ),
        ),
        SizedBox(height: 4.0),
        Text(_delivery.cost),
        Text((_delivery.time),
          style: TextStyle(
            fontWeight: FontWeight.bold,
        ),),
      ],
    );
  }

}
