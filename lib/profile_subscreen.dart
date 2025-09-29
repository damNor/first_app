import 'package:flutter/material.dart';

class ProfileSubscreen extends StatelessWidget {
  const ProfileSubscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        // personal card
        Container(
          margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          padding: EdgeInsets.fromLTRB(10, 0, 10, 10),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 5, spreadRadius: 1),
            ],
          ),
          child: Column(
            children: [
              // gambar, nama , jumlah
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      "assets/foto.png",
                      width: 120,
                      height: 120,
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Norris",
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                        Text("Staff Software"),

                        SizedBox(
                          width: double.infinity,
                          child: Card(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    Text("Followers"),
                                    Text(
                                      "205",
                                      style: Theme.of(
                                        context,
                                      ).textTheme.headlineSmall,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Articles"),
                                    Text(
                                      "100",
                                      style: Theme.of(
                                        context,
                                      ).textTheme.headlineSmall,
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Text("Ratings"),
                                    Text(
                                      "8.9",
                                      style: Theme.of(
                                        context,
                                      ).textTheme.headlineSmall,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // tombol chat , tombol follow
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text("Chat"),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Follow"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            "List Article",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
        ),

        // list article
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 20),
                child: SizedBox(
                  width: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // gambar
                      Image.network(
                        "https://cdn.pixabay.com/photo/2016/03/31/19/23/plant-1294971_1280.png",
                        height: 120,
                        width: double.infinity,
                        fit: BoxFit.fill,
                      ),
                      // category
                      Text("Nature", style: TextStyle(color: Colors.blue)),
                      // title
                      Text(
                        "Mari kita mengenal apa itu Pohon",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),

        // fav / featured article
        // MediaQuery.of(context).size.height = mengetahui berapa ukuran panjang & lebarnya
        SizedBox(
          width: double.infinity,
          height:
              MediaQuery.of(context).size.height * 0.2, // 20% of screen size
          child: Card(
            color: Colors.blueGrey,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Featured Article",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    color: Colors.blueGrey.shade700,
                  ),
                  Text(
                    "Tips agar bisa merawat Puun dengan benar",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
