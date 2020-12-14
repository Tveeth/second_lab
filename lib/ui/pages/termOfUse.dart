import 'package:flutter/material.dart';

class TermsOfUseCheck extends StatefulWidget {
  @override
  TermsOfUse createState() {
    return new TermsOfUse();
  }
}

class TermsOfUse extends State<TermsOfUseCheck> {
  bool _isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms of use"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child:
              Text(_isChecked ? "You agree with the terms of use." : "You don't agree with the terms of use.",
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
          Expanded(
              child: Container(
                height: 350.0,
                child: Column(
                  children: [
                    CheckboxListTile(
                      title:
                      _buildText(),
                      value: _isChecked,
                      onChanged: (val) {
                        setState(() {
                          _isChecked = val;
                        });
                      },
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}

Widget _buildText() {
  return Text("Using the functionality of the Application is possible only "
      "if the User agrees with the offers of the Copyright Holder.", style: TextStyle(
    fontSize: 20.0,
    color: Colors.grey,
  ),);
}