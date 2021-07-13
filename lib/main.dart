import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(BizCard());
}

class BizCard extends StatelessWidget {
  Container getContainer() {
    return Container(
      alignment: Alignment.center,
      height: 300,
      width: 400,
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.all(80.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.lightBlue.shade900, width: 5.0),
        borderRadius: BorderRadius.circular(30),
        color: Colors.red.shade900,
      ),
      child: Column(
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.person),
                Text(
                  'Jasmine Batra',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.email),
                Text(
                  'jasbatra01@gmail.com',
                  style: TextStyle(fontSize: 17.0),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Icon(Icons.phone),
                Text(
                  '7340991750',
                  style: TextStyle(fontSize: 17),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Container getImage() {
    return Container(
      height: 400,
      width: 200,
      alignment: Alignment.topCenter,
      // padding: EdgeInsets.all(100),
      margin: EdgeInsets.all(5.0),
      child: CircleAvatar(
        radius: 60.0,
        backgroundImage: NetworkImage(
            'https://cdn.pixabay.com/photo/2015/12/01/20/28/road-1072823_1280.jpg'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade200,
        appBar: AppBar(
          centerTitle: true,
          title: Text('BizCard'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Container(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    getContainer(),
                    getImage(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
