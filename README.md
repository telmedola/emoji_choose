# Flutter Choose Keyboard

A Flutter package that provides an Emoji Keyboard widget.

### BASED IN: https://github.com/JeffG05/emoji_picker

## Key Features
* Flutter WEB suports
* NullSafetty suports

* View and select 390 emojis
* 8 categories
* Optionally add keywords to recommend emojis
* Material Design and Cupertino mode
* Emojis that cannot be displayed are filtered out (Android Only)

## Usage
To use this plugin, add `emoji_choose` as dependency in your pubspec.yaml file.

## Sample Usage

```
import 'package:flutter/material.dart';
import 'package:emoji_choose/emoji_choose.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Test",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Emoji Choose Test"),
        ),
        body: MainPage(),
      ),
    );
  }

}

class MainPage extends StatefulWidget {

  @override
  MainPageState createState() => new MainPageState();

}

class MainPageState extends State<MainPage> {

  @override
  Widget build(BuildContext context) {


    return EmojiChoose(
      rows: 3,
      columns: 7,
      buttonMode: ButtonMode.MATERIAL,
      recommendKeywords: ["racing", "horse"],
      numRecommended: 10,
      onEmojiSelected: (emoji, category) {
        print(emoji);
      },
    );

  }

}
```
See the `example` directory for the complete sample app.
