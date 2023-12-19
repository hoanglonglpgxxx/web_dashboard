import 'package:flutter/material.dart';
import 'models/location.dart';

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
          children: _renderFacts(location),
        ));
  }

  List<Widget> _renderFacts(Location location) {
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
}


//container aka "div" of flutter
//fundamentals of Layout in flutter
//! child is widget inside container
//children: array of containers or sthing else?
//statelesswidget: no keep track of any values
//final is cant refined again(CONST IN JS)

//You can replace "String" with any other data type to create a list of that type. The List class provides various methods for adding, removing, and manipulating elements in the list.

//location_fact is constructor to get text and title, then location is contructor to get name, url and an array that is location_fact, mock_location pass an Location_type array that contains values