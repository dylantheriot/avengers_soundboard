import 'package:flutter/material.dart';
import 'package:avengers_soundboard/sound_btn_select/sound_btn_brain.dart';
import 'package:avengers_soundboard/sound_btn_select/sound_btn.dart';
import 'package:avengers_soundboard/size_config.dart';
import 'package:avengers_soundboard/sound_btn_select/reusable_sound_btn.dart';

SoundBtnBrain soundBrain = SoundBtnBrain();

class CharacterPage extends StatelessWidget {
  final String character;

  CharacterPage({this.character});

  @override
  Widget build(BuildContext context) {
    
    String characterParsed = character.split(" ").join("").toLowerCase();
    List<SoundBtn> charSoundBtns = soundBrain.getCharacterSounds(characterParsed);

    SizeConfig().init(context);

    return Scaffold(
      backgroundColor: Color(0xFF333366),
      appBar: AppBar(
        title: Text(character,
            style: TextStyle(
                fontFamily: 'Gloria',
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.red)),
        backgroundColor: Color(0xFF333366),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableSoundBtn(
                  charSoundBtn: charSoundBtns[0],
                  colour: Colors.red,
                ),
                ReusableSoundBtn(
                  charSoundBtn: charSoundBtns[1],
                  colour: Colors.blue,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableSoundBtn(
                  charSoundBtn: charSoundBtns[2],
                  colour: Colors.yellow,
                ),
                ReusableSoundBtn(
                  charSoundBtn: charSoundBtns[3],
                  colour: Colors.green,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                ReusableSoundBtn(
                  charSoundBtn: charSoundBtns[4],
                  colour: Colors.orange,
                ),
                ReusableSoundBtn(
                  charSoundBtn: charSoundBtns[5],
                  colour: Colors.purple,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
