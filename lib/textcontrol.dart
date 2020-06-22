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
          margin: EdgeInsets.fromLTRB(40, 70, 40, 30),
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
    'Are you a parking ticket? Cause you\'ve got fine written all over you.',
    'Are you sure you\'re not tired? You’ve been running through my mind all day.',
    'Was your dad a boxer? Because damn, you\'re a knockout!',
    'Would you grab my arm, so I can tell my friends I\'ve been touched by an angel?',
    'I was wondering if you had an extra heart. Mine was just stolen.',
    'Do you believe in love at first sight or should I pass by again?',
    'Hey, you’re pretty and I\'m cute. Together we’d be Pretty Cute.',
    'Kiss me if I\'m wrong, but dinosaurs still exist, right?',
    'Is your name Google? Because you have everything I\'ve been searching for.',
    'Are you from Tennessee? Because you\'re the only ten I see!',
    'I must be in a museum, because you truly are a work of art.',
    'Did you just come out of the oven? Because you\'re hot.',
    'Life without you is like a broken pencil…pointless.',
    'Something\'s wrong with my eyes because I can\'t take them off you.',
    'Are you a time traveler? Cause I see you in my future!',
    'Do you have a BandAid? I just scraped my knee falling for you.',
    'Do you know CPR? Because you are taking my breath away!',
    'Did you invent the airplane? Because you seem Wright for me.',
    'Do you like Star Wars? Because Yoda only one for me!',
    'Somebody better call God, because he\'s missing an angel.',
    'You\'re so beautiful that you made me forget my pickup line.',
    'Roses are red, my face is too... that only happens when I see you.',
    'Are you a minecraft fence? Cause I can\'t get over you.',
    'Can I give you a kiss? If you don\'t like it, you can return it.',
    'If I were to ask you out on a date, would your answer be the same as the answer to this question?',
    'Are you a bank loan? Because you got my interest.',
    'You like sleeping? Me too! We should do it together sometime.',
    'Your shirt has to go, but you can stay.',
    'Mario is red, Sonic is blue, will you be my player 2?',
    'I must be dancing with the devil, because you\'re hot as hell.',
    'Is your name Wifi? Cause I\'m feeling a connection!',
    'Kissing is a language of love… so how about a conversation?',
    'I’ve been wondering, do your lips taste as good as they look?',
    'If you were my homework, i\'d do you everyday.',
    'Do you play soccer? Because you\'re a keeper!',
    'Your hand looks heavy, let me hold it for you.',
    'Are you Siri? Because you autocomplete me!',
    'Are you a 45-degree angle? Because you\'re a cutie!',
    'I may not be a genie, but I can make your dreams come true.',
    'Do you have a map? I keep getting lost in your eyes.',
    'Are you bubble tea? Cause you keep me up at night.',
    'I\'d like to study astronomy, but instead of looking at the heavens I\'d like to look at you.',
    'Did your licence get suspended for driving all these guys crazy?',
    'If you were a flower you’d be a damnnn-delion.',
    'Are you a cat because I’m feline a connection between us.',
  ];
}
