import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:latihanflutter/formregistration.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  TextEditingController ctrphone = new TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Second"),),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
            children :[
              TextField(
                controller: ctrphone,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone',
                ),

              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () async {
                Navigator.pop(context, ctrphone.text);
              }
                , child: Text('Submit'),),

            ]
        ),
      ),
    );
  }
}