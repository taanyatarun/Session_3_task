import 'package:flutter/material.dart';
import 'package:session_3_task/data.dart';

void main() => runApp(const MaterialApp(
  home: GroupCard(),
));

class GroupCard extends StatefulWidget {
  const GroupCard({Key? key}) : super(key: key);

  @override
  _GroupCardState createState() => _GroupCardState();
}

class _GroupCardState extends State<GroupCard>{

  String input= "";
  final myController = TextEditingController();
  int rank= 5;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text("Crew Card"),
          centerTitle: true,
          backgroundColor: Colors.grey[800],
          elevation: 1.5,
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0,30.0,0.0),
          child: ListView(
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  radius:50.0,
                ),
              ),
              Divider(
                height: 90.0,
                color: Colors.grey[400],
              ),
              const Text(
                'GROUP NAME',
                style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(
                  height: 10.0
              ),
              Text(
                'Flutter Crew',
                style: TextStyle(
                    color: Colors.amberAccent[200],
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 30.0),
              const Text(
                  "Current Flutter Rank",
                  style: TextStyle(
                    color: Colors.grey,
                    letterSpacing: 2.0,
                  )
              ),
              const SizedBox(height: 10.0),
              Text(
                  '$rank',
                  style: TextStyle(
                      color: Colors.amberAccent[200],
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0
                  )
              ),
              const SizedBox(height: 30.0),
              Row(
                children:const [
                  Text(
                      "To increase the rank",
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2.0,
                      )
                  ),
                  SizedBox(width:1130.0),
                  Text(
                      "To decrease the rank",
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 2.0,
                      )
                  ),
                ],
              ),

              const SizedBox(height: 30.0),
              Row(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: FloatingActionButton(onPressed: () {
                      setState(() {
                        rank -= 1;
                      });
                    },
                      child: const Icon(Icons.arrow_upward),
                      backgroundColor: Colors.grey[800],
                    ),
                  ),
                  const SizedBox(width: 1350),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(onPressed: () {
                      setState(() {
                        rank += 1;
                      });
                    },
                      child: const Icon(Icons.arrow_downward),
                      backgroundColor: Colors.grey[800],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30.0),
              Center(
                child: TextField(
                  style: const TextStyle(
                    backgroundColor: Colors.white,
                  ),
                  controller: myController,
                  decoration: const InputDecoration(
                      labelText: "Enter field --- Names, email Id, Contact Numbers",
                      fillColor: Colors.white,
                      filled: true,
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              Center(
                child: ElevatedButton(
                  child: const Text("Reveal"),
                  onPressed: () {
                    setState(() {
                      input = myController.text;
                    });
                    myController.clear();
                  },
                ),
              ),
              const SizedBox(height: 30.0),
              Text(
                dataReq[input]!,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2.0,
                ),
              ),
              const SizedBox(height: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}










