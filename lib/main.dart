import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class MyScreen extends StatelessWidget {
  WebViewController? controller;
  MyScreen({Key? key}) : super(key : key);
  @override
  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Github_Site'),
        centerTitle:true,
        actions:[
          IconButton(
            onPressed: (){
              if(controller != null) {
                controller!.loadUrl('https://github.com/');
              }
            },
            icon : Icon(
              Icons.home,
            ),
          ),
        ],
      ),
      body : WebView(
        initialUrl: 'https://github.com/',
        javascriptMode: JavascriptMode.unrestricted,
        onWebViewCreated: (WebViewController controller) {
          this.controller = controller;
        },
      ),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      home : MyScreen(),
    ),
  );
}