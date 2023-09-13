import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FarmFresh(),
  ));
}

class FarmFresh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: CustomScrollView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.green,
              title: const Text("FARMERS FRESH ZONE"),
              floating: true,
              pinned: true,
              actions: [
                Row(
                  children: const [
                    Icon(Icons.location_on_outlined),
                    Text("Kochi"),
                    Icon(Icons.keyboard_arrow_down)
                  ],
                )
              ],
              bottom: AppBar(
                backgroundColor: Colors.green,
                elevation: 0,
                title: Container(
                  height: 37,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Center(
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Search for vegetables,fruits..",
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search)),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
                  const SizedBox(
                    height: 12,
                  ),
                  Material(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.26,
                          decoration: BoxDecoration(
                              color: Colors.green[100],
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(width: 1, color: Colors.green)),
                          child: Center(
                              child: Text(
                                "VEGETABLES",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.green[900]),
                              )),
                        ),
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.18,
                          decoration: BoxDecoration(
                              color: Colors.green[100],
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(width: 1, color: Colors.green)),
                          child: Center(
                              child: Text("FRUITS",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green[900]))),
                        ),
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.18,
                          decoration: BoxDecoration(
                              color: Colors.green[100],
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(width: 1, color: Colors.green)),
                          child: Center(
                              child: Text("EXOTIC",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green[900]))),
                        ),
                        Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * 0.26,
                          decoration: BoxDecoration(
                              color: Colors.green[100],
                              borderRadius: BorderRadius.circular(24),
                              border: Border.all(width: 1, color: Colors.green)),
                          child: Center(
                              child: Text("FRESH CUTS",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green[900]))),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 11,
                  ),
                  Container(
                      height: 200,
                      width: double.infinity,
                      child: const Image(
                          fit: BoxFit.fill,
                          image: AssetImage("assets/Images/farm fresh.jpg"))),
                  const SizedBox(
                    height: 13,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Material(
                      child: Container(
                        height: 88,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  children: [
                                    const Icon(
                                      Icons.timer,
                                      color: Colors.green,
                                      size: 32,
                                    ),
                                    Text(
                                      "30 MIN POLICY",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[700]),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    const Icon(
                                      Icons.camera_front_outlined,
                                      color: Colors.green,
                                      size: 32,
                                    ),
                                    Text(
                                      "TRACEABILITY",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[700]),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    const Icon(Icons.home_work,
                                        color: Colors.green, size: 32),
                                    Text(
                                      "LOCAL SOURCING",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.grey[700]),
                                    )
                                  ],
                                )
                              ]),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15.0, bottom: 9),
                    child: Text(
                      "Shop by Category",
                      style: TextStyle(fontSize: 28),
                    ),
                  ),
                  CustomGrid(),
                ])),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Account')
        ],
      ),
    );
  }
}

class CustomGrid extends StatelessWidget {
  var ImageList = [
    "assets/Images/offers.jpg",
    "assets/Images/vege.jpeg",
    "assets/Images/fruits.jpg",
    "assets/Images/exotic.jpeg",
    "assets/Images/freshcut.jpg",
    "assets/Images/Nutrition plantss.jpg",
    "assets/Images/pppp.jpg",
    "assets/Images/salads.jpg"
  ];
  var names = [
    "Offers",
    "Vegetables",
    "Fruits",
    "Exotic",
    "Fresh Cuts",
    "Nutrition Chargers",
    "Packed Flavours",
    "Gourmet Salads"
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: const EdgeInsets.only(bottom: 22),
        shrinkWrap: true,
        physics: const ScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 4, mainAxisSpacing: 4),
        itemBuilder: (context, index) {
          return Card(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            child: Stack(children: [
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(10),
                      topLeft: Radius.circular(10)),
                  child: Image(image: AssetImage(ImageList[index]))),
              Positioned(
                  bottom: 15,
                  left: 4,
                  child: Text(
                    names[index],
                    style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700]),
                  ))
            ]),
          );
        },
        itemCount: ImageList.length,
        );
    }
}