import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Image Advance"),backgroundColor: Colors.black,),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Images from Asset",style: TextStyle(fontSize: 25),),
          ),
          Image.asset("images/donlee.jpeg"),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text("Images from Network",style: TextStyle(fontSize: 25),),
          ),
          Image.network("https://www.thewrap.com/wp-content/uploads/2019/04/Ma-Dong-Seok-Marvel-The-Eternals.jpg",
          loadingBuilder: (context,child,progress){
            return progress==null?child:LinearProgressIndicator();
          },),
        ],
      ),
    );
  }
}