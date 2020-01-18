import 'package:auth_view/input_test/input.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  @override
  _TestPageState createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input Validation"),
      ),
      body: Container(
        color: Colors.grey[100],
        padding: const EdgeInsets.all(8.0),
        child: Form(
          autovalidate: true,
          child: Column(
            children: <Widget>[
              SizedBox(height: 30),
              AnimTFF(
                labelText: "Email Address",
                successText: "Email Validated Succesfuly",
                validator: (value) {
                  if (value.length < 3) return "Enter atleast 3 text";
                  return null;
                },
                inputIcon: Icon(Icons.email),
              )
            ],
          ),
        ),
      ),
    );
  }
}
