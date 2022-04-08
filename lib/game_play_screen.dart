
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mbti_game/player.dart';
import 'package:mbti_game/team.dart';

class GamePlayScreen extends StatefulWidget {
  
  final List<Team> playerList;

  GamePlayScreen(this.playerList);

  @override
  _GamePlayScreenState createState() => _GamePlayScreenState();
}

class _GamePlayScreenState extends State<GamePlayScreen> {

  Future<void> refreshList() async {
    setState(() {
      widget.playerList[0].player[1].hp = widget.playerList[0].player[1].hp;
    });
  }

  bool isPlayerOne = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isPlayerOne = isPlayerOne;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                spacing: 5.0,
                                runSpacing: 3.0,
                                children: [
                                  FilterChip(
                                    backgroundColor: !isPlayerOne ? Colors.blue : Colors.green,
                                    label: Text("Zwykły Atak"), 
                                    onSelected: (onSelected){
                                      setState(() {
                                        widget.playerList[0].player[1].hp -= 10;
                                        isPlayerOne = false;
                                      });
                                    }
                                  ),
                                  FilterChip(
                                    backgroundColor: !isPlayerOne ? Colors.blue : Colors.green,
                                    label: Text("Dziura"), 
                                    onSelected: (onSelected){
                                      setState(() {
                                        isPlayerOne = false;
                                      });
    
                                    }
                                  ),
                                  FilterChip(
                                    backgroundColor: !isPlayerOne ? Colors.blue : Colors.green,
                                    label: Text("Śruba"), 
                                    onSelected: (onSelected){
                                      setState(() {
                                        isPlayerOne = false;
                                      });
                                    }
                                  ),
                                  FilterChip(
                                    backgroundColor: !isPlayerOne ? Colors.blue : Colors.green,
                                    label: Text("Kręcimy"), 
                                    onSelected: (onSelected){
                                      setState(() {
                                        isPlayerOne = false;
                                      });
                                    }
                                  ),
                                  FilterChip(
                                    backgroundColor: !isPlayerOne ? Colors.blue : Colors.green,
                                    label: Text("I zrobione"), 
                                    onSelected: (onSelected){
                                      setState(() {
                                        isPlayerOne = false;
                                      });
                                    }
                                  ),
                                  FilterChip(
                                    backgroundColor: !isPlayerOne ? Colors.blue : Colors.green,
                                    label: Text("Skip"), 
                                    onSelected: (onSelected){
                                      setState(() {
                                        isPlayerOne = false;
                                      });
                                    }
                                  ),
                                ],
                              ),
                              Text("Nazwa: ${widget.playerList[0].player[0].nazwa}"),
                              Text("Zdrowie: ${widget.playerList[0].player[0].hp}"),
                              Text("Tarcza: 0"),
                              Text("Postać: ${widget.playerList[0].player[0].postac}"),
                              Text("Ulepszenie: ${widget.playerList[0].player[0].ulepszenie}"),
                              Text("Odnowienie ulepszenia: 0"),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 2),
                        ),
                        height: MediaQuery.of(context).size.height/3,
                        width: double.infinity,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Wrap(
                                spacing: 5.0,
                                runSpacing: 3.0,
                                children: [
                                  FilterChip(
                                    backgroundColor: isPlayerOne ? Colors.blue : Colors.green,
                                    label: Text("Zwykły Atak"), 
                                    onSelected: (onSelected){
                                      setState(() {
                                        isPlayerOne = true;
                                      });
                                    }
                                  ),
                                  FilterChip(
                                    backgroundColor: isPlayerOne ? Colors.blue : Colors.green,
                                    label: Text("Dziura"), 
                                    onSelected: (onSelected){
                                      setState(() {
                                        isPlayerOne = true;
                                      });
                                    }
                                  ),
                                  FilterChip(
                                    backgroundColor: isPlayerOne ? Colors.blue : Colors.green,
                                    label: Text("Śruba"), 
                                    onSelected: (onSelected){
                                      setState(() {
                                        isPlayerOne = true;
                                      });
                                    }
                                  ),
                                  FilterChip(
                                    backgroundColor: isPlayerOne ? Colors.blue : Colors.green,
                                    label: Text("Kręcimy"), 
                                    onSelected: (onSelected){
                                      setState(() {
                                        isPlayerOne = true;
                                      });
                                    }
                                  ),
                                  FilterChip(
                                    backgroundColor: isPlayerOne ? Colors.blue : Colors.green,
                                    label: Text("I zrobione"), 
                                    onSelected: (onSelected){
                                      setState(() {
                                        isPlayerOne = true;
                                      });
                                    }
                                  ),
                                  FilterChip(
                                    backgroundColor: isPlayerOne ? Colors.blue : Colors.green,
                                    label: Text("Skip"), 
                                    onSelected: (onSelected){
                                      setState(() {
                                        isPlayerOne = true;
                                      });
                                    }
                                  ),
                                ],
                              ),
                              Text("Nazwa: ${widget.playerList[0].player[1].nazwa}"),
                              Text("Zdrowie: ${widget.playerList[0].player[1].hp}"),
                              Text("Tarcza: 0"),
                              Text("Postać: ${widget.playerList[0].player[1].postac}"),
                              Text("Ulepszenie: ${widget.playerList[0].player[1].ulepszenie}"),
                              Text("Odnowienie ulepszenia: 0"),
                            ],
                          ),
                        ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 2),
                    ),
                    height: MediaQuery.of(context).size.height/3,
                    width: double.infinity,
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