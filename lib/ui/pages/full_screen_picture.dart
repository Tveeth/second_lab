import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:first_app/models/delivery.dart';
import 'package:first_app/ui/views/app_picture.dart';

class FullScreenPicture extends StatelessWidget {

  final Delivery app;

  const FullScreenPicture({
    Key key,
    @required this.app,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(app.address),
      ),
      body: Center(
        child: AppPicture(
          tag: app.uniqueTag,
          assetPath: app.imageAssetPath,
          size: 300.0,
        ),
      ),
    );
  }
}