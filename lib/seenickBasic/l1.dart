import 'package:flutter/material.dart';
import 'models/location.dart';
import 'package:flutter/foundation.dart';

class fLession extends StatelessWidget {
  final Location location;

  fLession(this.location);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(location.name)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderBody(context, location),
        ));
  }

  List<Widget> _renderBody(BuildContext context, Location location) {
    var result = <Widget>[];
    result.add(_bannerImage(location.url, 170.0));
    result.addAll(_renderFacts(context, location));
    debugPrint('result: $result');
    return result;
  }

  List<Widget> _renderFacts(BuildContext context, Location location) {
    var result = <Widget>[];
    for (int i = 0; i < location.facts.length; i++) {
      result.add(_sectionTitle(location.facts[i].title));
      result.add(_sectionText(location.facts[i].text));
    }
    return result;
  }

  Widget _sectionText(String text) {
    return Text(text);
  }

  Widget _sectionTitle(String title) {
    return Text(title);
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitWidth),
    );
  }
}


//container aka "div" of flutter
//fundamentals of Layout in flutter
//! child is widget inside container
//children: array of containers or sthing else?
//statelesswidget: no keep track of any values
//final is cant refined again(CONST IN JS)

//You can replace "String" with any other data type to create a list of that type. The List class provides various methods for adding, removing, and manipulating elements in the list.

//location_fact is constructor to get text and title, then location is contructor to get name, url and an array that is location_fact, mock_location pass an Location_type array that contains values

//working with imgs: dùng Image.netork()
//.addAll(): add tất cả val vào sau cùng mảng
//log widget dùng debugPrint