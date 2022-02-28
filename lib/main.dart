import 'package:flutter/material.dart';
import 'package:drinkme/Splash_screen/splash.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(backgroundColor: Colors.orange[500],
        child: ListView(
          children: <Widget>[
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    child: Text("Malt",style: TextStyle(fontSize: 18),),
                    onTap: (){
                      print("clicked MAlt");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    child: Text("Scotch", style: TextStyle(fontSize: 18),),
                    onTap: (){
                      print("Clicked scotch");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    child: Text("Cocktails",style: TextStyle(fontSize: 18),),
                    onTap: (){
                      print("clicked Cocktails");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    child: Text("Larger",style: TextStyle(fontSize: 18),),
                    onTap: (){
                      print("clicked Larger");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    child: Text("Stout",style: TextStyle(fontSize: 18),),
                    onTap: (){
                      print("clicked stout");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    child: Text("Lambic",style: TextStyle(fontSize: 18),),
                    onTap: (){
                      print("clicked Lambic");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    child: Text("Bock",style: TextStyle(fontSize: 18),),
                    onTap: (){
                      print("clicked Bock");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    child: Text("Dunkel",style: TextStyle(fontSize: 18),),
                    onTap: (){
                      print("clicked Dunkel");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: GestureDetector(
                    child: Text("Bitter",style: TextStyle(fontSize: 18),),
                    onTap: (){
                      print("clicked Bitter");
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                  child: Container(
                    decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(50)),
                    ),
                    child: GestureDetector(
                      child: Image.asset('assets/images/profile.jpg',width: 100,height: 100,),
                      onTap: (){
                        print("clicked MAlt");
                      },
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
       appBar: AppBar(
        title: Text("DrinkMe"),backgroundColor: Colors.black87,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none)),
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
        ],
        elevation: 20,
      ),
      body: Column(
        children: [
          Container(
          )
        ],
      ),
    );
  }
}

