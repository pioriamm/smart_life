import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_life/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: MediaQuery.of(context).size.height / 2,
          child: Image.asset(
            "assets/frutas.jpeg",
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(""),
                  const Text(
                    "SmartLife",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 35,
                        fontWeight: FontWeight.bold),
                  ),
                  FloatingActionButton.extended(
                    onPressed: () => Navigator.pushReplacement(context,
                        CupertinoPageRoute(builder: (context) => const Home())),
                    backgroundColor: Colors.blue,
                    label: Container(
                      width: MediaQuery.of(context).size.width,
                      child: const Center(
                        child: Text(
                          "Entre com e-mail",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FloatingActionButton.extended(
                          onPressed: () => null,
                          shape: const StadiumBorder(
                              side: BorderSide(color: Colors.grey, width: 1)),
                          backgroundColor: Colors.transparent,
                          label: Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: const Center(
                              child: Text(
                                "Google",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                        FloatingActionButton.extended(
                          shape: const StadiumBorder(
                              side: BorderSide(color: Colors.grey, width: 1)),
                          onPressed: () => null,
                          backgroundColor: Colors.transparent,
                          label: Container(
                            width: MediaQuery.of(context).size.width / 3,
                            child: const Center(
                              child: Text(
                                "Telefone",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Ao continuar você concorda com os termos?",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ],
              )),
        ),
      ]),
    );
  }
}
