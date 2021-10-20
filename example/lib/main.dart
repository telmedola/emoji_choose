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