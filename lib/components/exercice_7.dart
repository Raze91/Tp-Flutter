import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Exercice7 extends StatelessWidget {
  const Exercice7({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            children: const [
              Text("Profile",
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold))
            ],
          ),
          Container(
            height: 450,
            width: double.infinity,
            margin: const EdgeInsets.only(top: 10),
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(
                      0.0,
                      4,
                    ),
                  ),
                ]),
            child: (Column(children: [
              Stack(
                children: [
                  const SizedBox(
                    width: double.infinity,
                    height: 200,
                  ),
                  Container(
                    width: double.infinity,
                    height: 130,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://images.unsplash.com/photo-1579656592043-a20e25a4aa4b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80"),
                            fit: BoxFit.cover)),
                  ),
                  Positioned(
                    bottom: 20,
                    left: 20,
                    child: Row(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: (Container(
                            width: 95,
                            height: 95,
                            margin: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50)),
                              image: DecorationImage(
                                image: NetworkImage(
                                    "https://images.unsplash.com/photo-1579656592043-a20e25a4aa4b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80"),
                                fit: BoxFit.cover,
                              ),
                            ),
                          )),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: (SizedBox(
                              height: 100,
                              child: (Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text("Sami Hattab",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800, fontSize: 18)),
                                  Text(
                                    "Paris, France",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  )
                                ],
                              )),
                            )))
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Row(
                          children: const [
                            Icon(Icons.domain),
                            Padding(
                              padding: EdgeInsets.only(left: 30),
                              child: Text("Wizards Techonologies",
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      ),
                      Row(
                        children: const [
                          Icon(Icons.work_outline),
                          Padding(
                            padding: EdgeInsets.only(left: 30),
                            child: Text("Développeur Fullstack",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.left),
                          )
                        ],
                      )
                    ],
                  ))
            ])),
          )
        ],
      ),
    );
  }
}
