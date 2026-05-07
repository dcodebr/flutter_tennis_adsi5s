import 'package:flutter/material.dart';
import 'package:flutter_beachup/models/club.dart';

class ClubListScreen extends StatefulWidget {
  const ClubListScreen({super.key});

  @override
  State<ClubListScreen> createState() => _ClubListScreenState();
}

class _ClubListScreenState extends State<ClubListScreen> {
  String urlLogo = "https://www.cvtc.com.br/image/beachtennis.jpg";
  List<Club> clubList = [
    Club(
      name: "Quadra Sumaré",
      location: "Maringá",
      state: "PR",
      cover: "Outdoor",
      price: 19.90,
      urlImage:
          "https://images.tcdn.com.br/img/img_prod/1235983/kit_completo_para_quadra_de_beach_tennis_rede_de_protecao_263_1_ea5ab5a7588b6af1553f9c8378cedb09.jpg",
    ),
    Club(
      name: "Quadra Sumaré",
      location: "Maringá",
      state: "PR",
      cover: "Outdoor",
      price: 19.90,
      urlImage:
          "https://images.tcdn.com.br/img/img_prod/1235983/kit_completo_para_quadra_de_beach_tennis_rede_de_protecao_263_1_ea5ab5a7588b6af1553f9c8378cedb09.jpg",
    ),
    Club(
      name: "Quadra Sumaré",
      location: "Maringá",
      state: "PR",
      cover: "Outdoor",
      price: 19.90,
      urlImage:
          "https://images.tcdn.com.br/img/img_prod/1235983/kit_completo_para_quadra_de_beach_tennis_rede_de_protecao_263_1_ea5ab5a7588b6af1553f9c8378cedb09.jpg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(70),
                  bottomRight: Radius.circular(70),
                ),
              ),
              width: double.infinity,
              child: Image.network(urlLogo, fit: BoxFit.cover),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 6,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Row(
                        children: [
                          Expanded(flex: 1, child: Icon(Icons.search)),
                          Expanded(
                            flex: 9,
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Search",
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: FloatingActionButton(
                      shape: CircleBorder(),
                      backgroundColor: const Color.fromARGB(255, 30, 62, 31),
                      foregroundColor: Colors.yellow,
                      child: Icon(Icons.tune),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: SingleChildScrollView(
              child: Column(
                children: clubList
                    .map(
                      (club) => Container(
                        clipBehavior: Clip.antiAlias,
                        height: 165,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.blue,
                        ),
                        child: Row(
                          children: [
                            Expanded(flex: 5, child: Placeholder()),
                            Expanded(flex: 4, child: Placeholder()),
                          ],
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
