import 'package:flutter/material.dart';

class CheckboxOnchangedListener extends StatefulWidget {
  @override
  CheckboxOnchangedListenerState createState() {
    return new CheckboxOnchangedListenerState();
  }
}

class CheckboxOnchangedListenerState extends State<CheckboxOnchangedListener> {
  bool _isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Onchnaged Checkbox Listener Example"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Center(
              child:
              Text(_isChecked ? "Кирилл " : "Андрюха ",
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
                      title: Text("Checkbox Text"),
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