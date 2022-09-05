import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_life/login.dart';

import 'constants.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20.0, left: 20.00, right: 20.00),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: kToolbarHeight + 55,
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
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Hero(
                    tag: 136265974,
                    child: CircleAvatar(
                      radius: MediaQuery.of(context).size.width / 8,
                      backgroundImage: NetworkImage(Contantes.imageUrlProfile),
                    ),
                  ),
                  const Text(
                    "Laura Rodrigues",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
                  ),
                  const Text(
                    "laura.rodrigues@faculdade.com.br",
                    style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 15,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FloatingActionButton.extended(
                    shape: const StadiumBorder(
                        side: BorderSide(color: Colors.blue, width: 1)),
                    onPressed: () => null,
                    backgroundColor: Colors.blue,
                    label: Container(
                      width: MediaQuery.of(context).size.width / 3,
                      child: const Center(
                        child: Text(
                          "Editar Perfil",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w900),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Text(
              "Notificações",
              style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 15,
                  color: Colors.grey),
            ),
            cardeOpcoes(
                cardName: "Ative as notificações",
                custonWidget:
                    CupertinoSwitch(value: false, onChanged: (valor) {}),
                cardColors: Colors.blue),
            const SizedBox(
              height: 50,
            ),
            cardeOpcoes(
              cardName: "Preferencias Alimentares",
              cardColors: Colors.blue,
              custonWidget: Container(
                width: 40,
                child: FloatingActionButton(
                  onPressed: () => null,
                  elevation: 1.0,
                  backgroundColor: Colors.blue,
                  child: const Icon(
                    Icons.person_add_alt_1,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Center(
              child: TextButton(
                onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => Login(),
                    ),
                    (route) => false),
                child: const Text(
                  "Sair",
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  cardeOpcoes({
    required cardName,
    required cardColors,
    required custonWidget,
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
                        fontSize: 20.0,
                        overflow: TextOverflow.clip,
                        fontWeight: FontWeight.w900),
                  ),
                ),
                custonWidget,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
