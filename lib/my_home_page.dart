import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mbti_game/cubit/theme_cubit.dart';
import 'package:mbti_game/game_play_screen.dart';
import 'package:mbti_game/player.dart';
import 'package:mbti_game/team.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int? value1;
  String? value2;
  String? value3;
  String? value4;
  String? themeVal;

  TextEditingController team1_nazwa= TextEditingController();
  String? team1_postac;
  String? team1_ulepszenie;
  TextEditingController team2_nazwa= TextEditingController();
  String? team2_postac;
  String? team2_ulepszenie;

  List<Team> teamList = [];

  Widget TeamWidget() {
    return Column(
      children: [
        const Divider(thickness: 4, color: Colors.white,),
        const Text("Team 1"),
        const Divider(thickness: 4, color: Colors.white,),
        SizedBox(height: 10,),
        Row(
          children: [
            //1
            Flexible(
              child: Container(
                child: TextField(
                  controller: team1_nazwa,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                      Radius.circular(30.0)), 
                    ),
                  ),
                ),
              ),
            ),
            //end 1
            SizedBox(width: 10,),
            //2
            Flexible(
              child: Container(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: team1_postac,
                    items: <String>[
                      "INTJ",
                      "ISTJ",
                      "ISTP",
                      "ISFP",
                      "INTP",
                      "ENTP",
                      "ENFP",
                      "ESTP",
                      "INFJ",
                      "INFP",
                      "ISFJ",
                      "ESFP",
                      "ENTJ",
                      "ENFJ",
                      "ESTJ",
                      "ESFJ",
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        team1_postac = value;
                      });
                    },
                  ),
                ),
              ),
            ),
            //end 2
            SizedBox(width: 10,),
            //3
            Flexible(
              child: Container(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: team1_ulepszenie,
                    items: <String>[
                      "Piorun",
                      "Leczenie",
                      "Duch",
                      "Uderzenie obronne",
                      "Kometa",
                      "Perfekcjonista",
                      "Konfiguracja Obronna",
                      "Maska",
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value.toString()),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        team1_ulepszenie = value;
                      });
                    },
                  ),
                ),
              ),
            ),
            //end 3
          ],
        ),
        const Divider(thickness: 4, color: Colors.white,),
        const Text("Team 2"),
        const Divider(thickness: 4, color: Colors.white,),
        SizedBox(height: 10,),
        Row(
          children: [
            //1
            Flexible(
              child: Container(
                child: TextField(
                  controller: team2_nazwa,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                      Radius.circular(30.0)), 
                    ),
                  ),
                ),
              ),
            ),
            //end 1
            SizedBox(width: 10,),
            //2
            Flexible(
              child: Container(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: team2_postac,
                    items: <String>[
                      "INTJ",
                      "ISTJ",
                      "ISTP",
                      "ISFP",
                      "INTP",
                      "ENTP",
                      "ENFP",
                      "ESTP",
                      "INFJ",
                      "INFP",
                      "ISFJ",
                      "ESFP",
                      "ENTJ",
                      "ENFJ",
                      "ESTJ",
                      "ESFJ",
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        team2_postac = value;
                      });
                    },
                  ),
                ),
              ),
            ),
            //end 2
            SizedBox(width: 10,),
            //3
            Flexible(
              child: Container(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: DropdownButton<String>(
                    isExpanded: true,
                    value: team2_ulepszenie,
                    items: <String>[
                      "Piorun",
                      "Leczenie",
                      "Duch",
                      "Uderzenie obronne",
                      "Kometa",
                      "Perfekcjonista",
                      "Konfiguracja Obronna",
                      "Maska",
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value.toString()),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        team2_ulepszenie = value;
                      });
                    },
                  ),
                ),
              ),
            ),
            //end 3
          ],
        ),
      ],
    );
  }
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Wybierz liczbę graczy"),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        child: DropdownButton<int>(
                          isExpanded: true,
                          value: value1,
                          items: <int>[1].map((int value) {
                            return DropdownMenuItem<int>(
                              value: value,
                              child: Text(value.toString()),
                            );
                          }).toList(),
                          onChanged: (value) {
                            setState(() {
                              value1 = value;
                            });
                          },
                        ),
                      ),
                      const SizedBox(height: 10,),
                      Padding (
                        padding: EdgeInsets.all(8.0),
                        child: Container(
                          child: Column(
                            children: [
                              TeamWidget(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Text("Motyw"),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Container(
                    child: BlocBuilder<ThemeCubit, String>(
                      builder: (context, state){
                        return Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                          ),
                          child: DropdownButton<String>(
                            isExpanded: true,
                            value: themeVal,
                            items: <String>["Jasny", "Ciemny", "Systemowy"].map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value.toString()),
                              );
                            }).toList(),
                            onChanged: (value) {
                              setState(() {
                                themeVal = value;
                                BlocProvider.of<ThemeCubit>(context).toggleTheme(value: value!);
                              });
                            },
                          ),
                        );
                      }
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    height: 50,
                    width: 200,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.black,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("Start"),
                          Icon(Icons.star),
                        ],
                      ),
                      onPressed: () {
                        setState(() {
                          teamList.add(Team([
                            Player(nazwa: team1_nazwa.text, postac: team1_postac, ulepszenie: team1_ulepszenie),
                            Player(nazwa: team2_nazwa.text, postac: team2_postac, ulepszenie: team2_ulepszenie),
                          ]));
                        });
                        Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => GamePlayScreen(teamList)));
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}