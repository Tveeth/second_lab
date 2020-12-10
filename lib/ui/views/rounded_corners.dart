import 'package:flutter/material.dart';

class RoundedCorners extends StatelessWidget {
  final Widget child;

  const RoundedCorners({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ClipRRect(
      borderRadius: BorderRadius.circular(100.0),
      child: child,
    );
  }
}
