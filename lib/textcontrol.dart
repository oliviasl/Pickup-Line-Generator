import 'package:flutter/material.dart';
import 'dart:math';

class TextControl extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _TextControlState();
  }
}

class _TextControlState extends State<TextControl> {
  var random = new Random();
  int lineIndex = 0;

  void newIndex() {
    setState(() {
      lineIndex = random.nextInt(pickupLineQuery.length);
    });
  }

  var appBar = AppBar();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: (MediaQuery.of(context).size.height -
                  appBar.preferredSize.height) /
              3,
          margin: EdgeInsets.fromLTRB(50, 150, 50, 0),
          child: Text(
            pickupLineQuery[lineIndex],
            style: TextStyle(
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          child: RaisedButton(
            color: Colors.red,
            textColor: Colors.white,
            onPressed: newIndex,
            child: Text(
              'Get Pickup Line',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ),
      ],
    );
  }

  static const pickupLineQuery = [
    'Damn, I\'m no weather man, but you can expect a couple inches tonight.',
    'Hey, my name\'s Microsoft. Can I crash at your place tonight?',
    'Did the sun come out or did you just smile at me?',
    'I\'m no photographer, but I can picture us together.',
    'Feel my shirt. Know what it’s made of? Boyfriend material.',
    'If I could rearrange the alphabet, I would put U and I together.',
    'I was blinded by your beauty; I’m going to need your name and phone number for insurance purposes.',
    'Can I follow you where you’re going right now? Because my parents always told me to follow my dreams.',
    'Is this the Hogwarts Express? Because it feels like you and I are headed somewhere magical.',
    'I\m not drunk, I\'m just intoxicated by you.',
    'Are you Jewish? Cause you ISRAELI HOT.',
    'Are you a cat? Cause you are purrrfect.',
    'They say Disneyland is the happiest place on earth. Well apparently, no one has ever been standing next to you.',
    'Are you religious? Because you’re the answer to all my prayers.',
    'I seem to have lost my phone number. Can I have yours?',
    'Aside from being sexy, what do you do for a living?',
    'How was heaven when you left it?',
    'My love for you is like diarrhea, I just can\'t hold it in.',
    'Baby, if you were words on a page, you\'d be fine print.',
    'Was that an earthquake, or did you just rock my world?',
    'Do you want to go to In-and-Out for burgers or just in-and-out of me?',
    //new lines
    'Are you a magician? Because whenever I look at you, everyone else disappears!',
    'Do I know you? Cause you look a lot like my next girlfriend/boyfriend.',
    'I’m lost. Can you give me directions to your heart?',
    'Are you a parking ticket? ‘Cause you\'ve got fine written all over you.',
    'Are you sure you\'re not tired? You’ve been running through my mind all day.',
    'Was your dad a boxer? Because damn, you\'re a knockout!',
    'Would you grab my arm, so I can tell my friends I\'ve been touched by an angel?',
    'I was wondering if you had an extra heart. Mine was just stolen.',
    'Do you believe in love at first sight or should I pass by again?',
    'Hey, you’re pretty and I\'m cute. Together we’d be Pretty Cute.',
    'Kiss me if I\'m wrong, but dinosaurs still exist, right?',
    'Is your name Google? Because you have everything I\'ve been searching for.',
    'Are you from Tennessee? Because you\'re the only ten I see!',
  ];
}
