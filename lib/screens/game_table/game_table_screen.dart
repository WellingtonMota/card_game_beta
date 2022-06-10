import 'package:card_game_beta/components/card_component.dart';
import 'package:flutter/material.dart';

class GameTableScreen extends StatefulWidget {
  const GameTableScreen({Key? key}) : super(key: key);

  @override
  State<GameTableScreen> createState() => _GameTableScreenState();
}

class _GameTableScreenState extends State<GameTableScreen> {
  // int _selectedIndex = 0;
  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.stadium),
              onPressed: () {},
            );
          },
        ),
        title: const Text('Stadium Arena'),
        backgroundColor: Colors.amber,
        centerTitle: true,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.timer_rounded),
            tooltip: 'Tempo de partida',
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                width: 5.0,
                color: Colors.white,
              ),
              left: BorderSide(
                width: 5.0,
                color: Colors.white,
              ),
              right: BorderSide(
                width: 5.0,
                color: Colors.white,
              ),
              bottom: BorderSide(
                width: 5.0,
                color: Colors.white,
              ),
            ),
            image: DecorationImage(
              image: AssetImage('assets/images/field.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Image.asset('assets/images/goalTop.jpg'),
              ),
              Row(
                children: const <Widget>[
                  Expanded(
                    child: CardComponent(
                      picture: '0',
                      playerName: 'Juarez',
                      atack: '10',
                    ),
                  ),
                  Expanded(
                    child: CardComponent(
                      picture: '1',
                      playerName: 'Nelmar',
                      atack: '7',
                    ),
                  ),
                  Expanded(
                    child: CardComponent(
                      picture: '2',
                      playerName: 'Runaldo',
                      atack: '5',
                    ),
                  ),
                ],
              ),
              const Divider(
                height: 50.0,
                thickness: 5,
                indent: 0,
                endIndent: 0,
                color: Colors.white,
              ),
              Row(
                children: const <Widget>[
                  Expanded(
                    child: CardComponent(
                      picture: '10',
                      playerName: 'Bebelto',
                      atack: '8',
                    ),
                  ),
                  Expanded(
                    child: CardComponent(
                      picture: '20',
                      playerName: 'Romarildo',
                      atack: '11',
                    ),
                  ),
                  Expanded(
                    child: CardComponent(
                      picture: '30',
                      playerName: 'Zangallo',
                      atack: '13',
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Image.asset('assets/images/goalBottom.jpg'),
              ),
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.business),
      //       label: 'Business',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.school),
      //       label: 'School',
      //     ),
      //   ],
      //   currentIndex: _selectedIndex,
      //   selectedItemColor: Colors.amber[800],
      //   onTap: _onItemTapped,
      // ),
      // floatingActionButton: FloatingActionButton(
      //   backgroundColor: Colors.amber,
      //   onPressed: () => setState(() => {}),
      //   tooltip: 'Increment Counter',
      //   child: const Icon(Icons.handshake),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
