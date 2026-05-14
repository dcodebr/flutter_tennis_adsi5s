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
      name: "Quadra JD Oasis",
      location: "Sarandi",
      state: "PR",
      cover: "Outdoor",
      price: 19.90,
      urlImage:
          "https://images.tcdn.com.br/img/img_prod/1235983/kit_completo_para_quadra_de_beach_tennis_rede_de_protecao_263_1_ea5ab5a7588b6af1553f9c8378cedb09.jpg",
    ),
    Club(
      name: "Quadra Sumaré",
      location: "Marialva",
      state: "PR",
      cover: "Outdoor",
      price: 19.90,
      urlImage:
          "https://images.tcdn.com.br/img/img_prod/1235983/kit_completo_para_quadra_de_beach_tennis_rede_de_protecao_263_1_ea5ab5a7588b6af1553f9c8378cedb09.jpg",
    ),
  ];

  TextEditingController pesquisaController = TextEditingController();

  List<Club> listaFiltrada = [];

  void pesquisaClubs() {
    listaFiltrada = clubList
        .where(
          (club) =>
              club.name!.toUpperCase().contains(
                pesquisaController.text.toUpperCase(),
              ) ||
              club.location!.toUpperCase().contains(
                pesquisaController.text.toUpperCase(),
              ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    pesquisaClubs();

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 204, 200, 200),
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
              child: Image.asset('assets/images/logo.jpg', fit: BoxFit.cover),
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
                                controller: pesquisaController,
                                onChanged: (value) => setState(() {}),
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
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  spacing: 10,
                  children: listaFiltrada
                      .map(
                        (club) => Container(
                          clipBehavior: Clip.antiAlias,
                          height: 165,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white,
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 5,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    spacing: 2,
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            "${club.name}",
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.location_on_outlined),
                                          Text(
                                            "${club.location}, ${club.state}",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(Icons.wb_sunny_outlined),
                                          Text(
                                            "${club.cover}",
                                            style: TextStyle(fontSize: 14),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.attach_money,
                                            color: const Color.fromARGB(
                                              255,
                                              10,
                                              79,
                                              13,
                                            ),
                                          ),
                                          Text(
                                            "${club.price?.toStringAsFixed(2)}/h",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: const Color.fromARGB(
                                                255,
                                                10,
                                                79,
                                                13,
                                              ),
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Container(
                                    clipBehavior: Clip.antiAlias,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    height: double.infinity,
                                    child: Image.network(
                                      club.urlImage!,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
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
