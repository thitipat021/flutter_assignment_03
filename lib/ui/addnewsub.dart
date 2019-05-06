import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Addthenew extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AddthenewState();
  }
}

class AddthenewState extends State<Addthenew> {
  final _key = GlobalKey<FormState>();
  CollectionReference fstore = Firestore.instance.collection('todo');
  TextEditingController title = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Subject"),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Form(
          key: _key,
          child: ListView(
            children: <Widget>[
              TextFormField(
                controller: title,
                decoration: InputDecoration(
                  labelText: "Subject",
                ),
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please fill subject";
                  }
                },
              ),
              RaisedButton(
                child: Text("Save"),
                onPressed: () {
                  if (_key.currentState.validate()) {
                    fstore.add({"title": title.text, "done": 0});
                    Navigator.pop(context);
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}