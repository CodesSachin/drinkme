import 'package:drinkme/modal/Api_Manager/api_manager.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:drinkme/modal/Api_Manager/apicall.dart';
import 'dart:async';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  late Future<Welcome> apiModal;
  void initState() {
    super.initState();
    apiModal = apicallState().apiCall();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.orange[500],
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(220, 15, 0, 15),
                  child: GestureDetector(
                    child: Icon(Icons.arrow_back),
                    onTap: () {
                      Navigator.of(context)
                          .pop(); //before pushing to any other route
                    },
                  ),
                ),
                Divider(
                  thickness: 1.5,
                  color: Colors.orange[800],
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: GestureDetector(
                    child: Text(
                      "Malt",
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      print("clicked MAlt");
                    },
                  ),
                ),
                Divider(
                  thickness: 1.5,
                  color: Colors.orange[800],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    child: Text(
                      "Scotch",
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      print("Clicked scotch");
                    },
                  ),
                ),
                Divider(
                  thickness: 1.5,
                  color: Colors.orange[800],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    child: Text(
                      "Cocktails",
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      // getUserData();
                    },
                  ),
                ),
                Divider(
                  thickness: 1.5,
                  color: Colors.orange[800],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    child: Text(
                      "Larger",
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      print("clicked Larger");
                    },
                  ),
                ),
                Divider(
                  thickness: 1.5,
                  color: Colors.orange[800],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    child: Text(
                      "Stout",
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      print("clicked stout");
                    },
                  ),
                ),
                Divider(
                  thickness: 1.5,
                  color: Colors.orange[800],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    child: Text(
                      "Bitter",
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      print("clicked Bitter");
                    },
                  ),
                ),
                Divider(
                  thickness: 1.5,
                  color: Colors.orange[800],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    child: Text(
                      "Rum",
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      print("clicked Bitter");
                    },
                  ),
                ),
                Divider(
                  thickness: 1.5,
                  color: Colors.orange[800],
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    child: Text(
                      "Lambic",
                      style: TextStyle(fontSize: 18),
                    ),
                    onTap: () {
                      print("clicked Lambic");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                    accountName: Text(
                      'Poision',
                      style: TextStyle(fontSize: 20, color: Colors.orange[500]),
                    ),
                    accountEmail: Text(
                      "popeye.poision404@protonmail.com",
                      style: TextStyle(fontSize: 16, color: Colors.orange[500]),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: AssetImage('assets/images/profile.jpg'),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("DrinkMe"),
        backgroundColor: Colors.orange[500],
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
              )),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
        elevation: 20,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
        )),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                // borderRadius: BorderRadius()
              ),
              height: 180,
              width: 300,
              child: Image(
                image: AssetImage("assets/images/cheers.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            Expanded(
                child: Container(
              child: FutureBuilder<Welcome>(
                future: apiModal,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data?.drinks.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemBuilder: (context, i) {
                        var x = snapshot.data?.drinks[i];
                        return Container(
                          child: Row(
                            mainAxisAlignment : MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25)
                                  ),
                                  height: 100,
                                  width: 100,
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.pushNamed(
                                          context, '/third');
                                    },
                                    child: Image.network(
                                      x!.imageLink,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Column(
                                    mainAxisAlignment : MainAxisAlignment.end,
                                  crossAxisAlignment : CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      x.drinkName,
                                      style: TextStyle(
                                          color: Colors.orange,fontSize: 17),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                      child: Text(
                                        "Bitter Beer",
                                        textAlign: TextAlign.justify,
                                        style: TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "5.0 ",
                                          style: TextStyle(
                                              color:
                                                  Colors.orange[500]),
                                        ),
                                        Icon(
                                          Icons.ac_unit_outlined,
                                          color: Colors.orange[500],
                                          size: 15,
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              // Padding(
                              //   padding: const EdgeInsets.fromLTRB(110, 20, 0, 0),
                              //   child: Container(
                              //       width: 60,
                              //       decoration: BoxDecoration(
                              //         borderRadius:
                              //         BorderRadius.all(Radius.circular(20)),
                              //         border: Border.all(color: Colors.orange),
                              //       ),
                              //       alignment: Alignment.center,
                              //       child: Icon(
                              //         Icons.add,
                              //         color: Colors.orange[500],
                              //         size: 25,
                              //       )),
                              // ),
                            ],
                          ),
                        );
                      },
                    );
                  } else {
                    return Center(
                      child: Text(
                        "Error",
                        style: TextStyle(color: Colors.white),
                      ),
                    );
                  }
                },
              ),
            ))
          ],
        ),
      ),
    );
  }
}
