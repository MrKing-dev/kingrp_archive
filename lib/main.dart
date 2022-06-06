import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kingrp_archive/constants.dart';
import 'dart:convert';
import 'package:asset_webview/asset_webview.dart';
import 'package:asset_webview/asset_webview_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mr. King\'s Rp Server Archive',
      theme: ThemeData.dark(),
      home: MyHomePage(title: "Mr. King's Rp Server Archive"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  var filename = "Rules___rules.html";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              flex: 8,
              child: Container(
                key: UniqueKey(),
                child: AssetWebview(initialUrl: 'asset://local/assets/$filename'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.deepPurple,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: DropdownButton<String>(
                      value: filename,
                      itemHeight: null,
                      isExpanded: true,
                      icon: const Icon(Icons.arrow_downward),
                      underline: Container(
                        height: 2,
                        color: Colors.white,
                      ),
                    onChanged: (String? newValue) {
                      setState(() {
                        filename = newValue!;
                      });
                    },
                      items: menuItems,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
