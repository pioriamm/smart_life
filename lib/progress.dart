import 'package:flutter/material.dart';

import 'constants.dart';

class Progress extends StatelessWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: kToolbarHeight + 40,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Align(
                        alignment: AlignmentDirectional(0.3, 0.1),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                          size: 18.0,
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Progresso",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Icon(Icons.search),
                        const SizedBox(
                          width: 10.0,
                        ),
                        Hero(
                          tag: 136265974,
                          child: CircleAvatar(
                            radius: 20.0,
                            backgroundImage:
                                NetworkImage(Contantes.imageUrlProfile),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            cardeRefeicoesAdicoes(
              cardName: "Atividades",
              cardColors: Colors.blue,
            ),
            cardeRefeicoesAdicoes(
              cardName: "Água",
              cardColors: Colors.blue,
            ),
            cardeRefeicoesAdicoes(
              cardName: "Cardápio",
              cardColors: Colors.blue,
            ),
            cardeRefeicoesAdicoes(
              cardName: "Calorias",
              cardColors: Colors.blue,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),
          ],
        ),
      ),
    );
  }

  cardeRefeicoesAdicoes({
    required cardName,
    required cardColors,
  }) {
    return Card(
      color: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    cardName,
                    style: TextStyle(
                        fontSize: 30.0,
                        overflow: TextOverflow.clip,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
