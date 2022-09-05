import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_life/profile.dart';
import 'package:smart_life/progress.dart';

import 'constants.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Casa",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                  ),
                  SizedBox(
                    child: Row(children: [
                      Icon(Icons.search),
                      const SizedBox(
                        width: 10.0,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => Profile(),
                          ),
                        ),
                        child: CircleAvatar(
                          radius: 20.0,
                          backgroundImage:
                              NetworkImage(Contantes.imageUrlProfile),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Olá",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
                  ),
                  Text(
                    "Laura Rodrigues",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FloatingActionButton.extended(
                    onPressed: () => Null,
                    backgroundColor: Colors.blue,
                    label: Container(
                      width: MediaQuery.of(context).size.width / 4,
                      child: const Center(
                        child: Text(
                          "Visão Geral",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  FloatingActionButton.extended(
                    onPressed: () => null,
                    backgroundColor: Colors.blue,
                    label: Container(
                      width: MediaQuery.of(context).size.width / 4,
                      child: const Center(
                        child: Text(
                          "Dieta",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 185,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: AlignmentDirectional.topCenter,
                children: [
                  Positioned(
                    bottom: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 7,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 150,
                      width: MediaQuery.of(context).size.width - 95,
                      child: Text(" teste"),
                    ),
                  ),
                  Positioned(
                    bottom: 25,
                    child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 150,
                        width: MediaQuery.of(context).size.width - 80,
                        child: const Text("teste")),
                  ),
                  Positioned(
                    bottom: 30,
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => Progress(),
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 7,
                              offset: const Offset(
                                  0, 3), // changes position of shadow
                            ),
                          ],
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        height: 150,
                        width: MediaQuery.of(context).size.width - 55,
                        child: SizedBox(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Text("Aqui, esta o seu progresso."),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "76 %",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "Refeições",
              style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
            ),
            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.0,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0),
                children: [
                  cardeRefeicoes(
                      cardName: "café da manhã",
                      cardColors: Colors.blue,
                      cardQuantid: "24/09"),
                  cardeRefeicoes(
                      cardName: "Almoço",
                      cardColors: Colors.orange,
                      cardQuantid: "24/09"),
                  cardeRefeicoes(
                      cardName: "Lanche",
                      cardColors: Colors.purpleAccent,
                      cardQuantid: "24/09"),
                  cardeRefeicoes(
                      cardName: "Jantar",
                      cardColors: Colors.greenAccent,
                      cardQuantid: "24/09"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  cardeRefeicoes({
    required cardName,
    required cardColors,
    required cardQuantid,
  }) {
    return Card(
      color: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SizedBox(
              width: 60,
              height: 60,
              child: FloatingActionButton(
                onPressed: () => null,
                elevation: 1.0,
                backgroundColor: Colors.blue,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    cardName,
                    style:
                        TextStyle(fontSize: 15.0, overflow: TextOverflow.clip),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Container(
                    height: 50,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Stack(
                    children: [
                      Container(
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.grey[700],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      Container(
                        height: 10,
                        width: 20,
                        decoration: BoxDecoration(
                          color: cardColors,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30,
                    width: 10,
                    decoration: BoxDecoration(
                      color: cardColors,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Center(child: Text(cardQuantid)),
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
