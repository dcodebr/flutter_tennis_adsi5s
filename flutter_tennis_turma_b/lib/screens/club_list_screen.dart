import 'package:flutter/material.dart';
import 'package:flutter_tennis/models/club.dart';

class ClubListScreen extends StatefulWidget {
  const ClubListScreen({super.key});

  @override
  State<ClubListScreen> createState() => _ClubListScreenState();
}

class _ClubListScreenState extends State<ClubListScreen> {
  String logoUrl =
      "https://viagem.cnnbrasil.com.br/wp-content/uploads/sites/5/2022/04/Soul-Beach-Arena.jpeg";

  List<Club> clubsList = [
    Club(
      name: "North Kings Club",
      city: "North Dallas",
      state: "TX",
      style: "Outdoor",
      price: 20,
      image:
          "https://static.sportit.com.br/public/sportit/imagens/produtos/quadra-de-beach-tennis-sport-it-m2-2946.jpg",
    ),
    Club(
      name: "Carolina Tennis Club",
      city: "Dallas",
      state: "TX",
      style: "Indoor",
      price: 15,
      image:
          "https://www.mercadoeeventos.com.br/wp-content/uploads/2021/07/unnamed-30.jpg",
    ),
    Club(
      name: "Downtown Club",
      city: "Dallas",
      state: "TX",
      style: "Indoor",
      price: 18.5,
      image:
          "https://brascourt.com.br/wp-content/uploads/2022/02/brascourtareia.jpg",
    ),
    Club(
      name: "North Kings Club",
      city: "North Dallas",
      state: "TX",
      style: "Outdoor",
      price: 30,
      image:
          "https://portal.loft.com.br/wp-content/uploads/2022/06/quadra-de-beach-tennis2.jpeg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.white,
      ),
      extendBodyBehindAppBar: true,
      backgroundColor: const Color.fromARGB(255, 221, 220, 220),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(70),
                        bottomRight: Radius.circular(70),
                      ),
                    ),
                    child: Image.network(logoUrl, fit: BoxFit.fill),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 7,
                    child: Container(
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 196, 195, 195),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: [
                            Expanded(flex: 1, child: Icon(Icons.search)),
                            Expanded(
                              flex: 9,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 7),
                                child: TextField(
                                  style: TextStyle(fontSize: 20),
                                  decoration: InputDecoration(
                                    hintText: "Search ..",
                                    hintStyle: TextStyle(fontSize: 20),
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: FloatingActionButton(
                      shape: CircleBorder(),
                      foregroundColor: Colors.yellow,
                      backgroundColor: const Color.fromARGB(255, 39, 123, 42),
                      onPressed: () {},
                      child: Icon(Icons.tune),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                
                child: Column(
                  spacing: 10,
                  children: clubsList
                      .map(
                        (club) => Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                height: 200,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        flex: 3,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                            left: 10,
                                          ),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            spacing: 5,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(
                                                    club.name,
                                                    style: TextStyle(
                                                      fontSize: 25,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(
                                                    Icons.location_on_outlined,
                                                  ),
                                                  Text(
                                                    "${club.city},${club.state}",
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Icon(Icons.wb_sunny_outlined),
                                                  Text(
                                                    club.style,
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "\$${club.price.toStringAsFixed(2)}/hr",
                                                    style: TextStyle(
                                                      fontSize: 22,
                                                      color:
                                                          const Color.fromARGB(
                                                            255,
                                                            39,
                                                            123,
                                                            42,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          height: double.infinity,
                                          clipBehavior: Clip.antiAlias,
                                          decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius: BorderRadius.circular(
                                              35,
                                            ),
                                          ),
                                          child: Image.network(
                                            club.image,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
