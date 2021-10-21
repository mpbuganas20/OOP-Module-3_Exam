import 'package:flutter/material.dart';

class ComposeTweet extends StatefulWidget {
  const ComposeTweet({Key? key}) : super(key: key);

  @override
  _ComposeTweetState createState() => _ComposeTweetState();
}

class _ComposeTweetState extends State<ComposeTweet> {
  String text = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: null,
          ),
          title: Text('Compose Tweet'),
          actions: [
            FlatButton(
                textColor: Colors.white, onPressed: null, child: Text('Tweet'))
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          child: new Form(child: TextFormField(
            onChanged: (val) {
              setState(() {
                text = val;
              });
            },
          )),
        ));
  }
}
