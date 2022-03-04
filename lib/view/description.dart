import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Homepage.dart';

class description extends StatefulWidget {
  const description({Key? key}) : super(key: key);

  @override
  State<description> createState() => _descriptionState();
}

class _descriptionState extends State<description> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color.fromARGB(255, 43, 42, 42),
        backgroundColor:  Colors.black87,
      ),
      body: Container(
      decoration: BoxDecoration(
         image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
        ),
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Container(
                    // color: Colors.red,
                    height: 250,
                    width: 100,
                    child: Image(
                      image: NetworkImage("https://www.thecocktaildb.com/images/media/drink/bry4qh1582751040.jpg"),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 5),
                      child: Text("Blue Margarita",style: TextStyle(color: Colors.orange,fontSize: 25),),
                    ),
                    Container(
                      width: 250,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text("Bitter beer",style: TextStyle(color: Colors.white,fontSize: 18),),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("5.0",style: TextStyle(color: Colors.orange),),
                          ),
                          Icon(Icons.ac_unit_outlined,color: Colors.orange,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                      child: Text("&12",style: TextStyle(color: Colors.orange[500]),),
                    ),
                    Container(
                      width: 250.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: (){},
                            child: Text("250ml",style: TextStyle(color: Colors.orange),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Color(0xA9A99C9E),
                          onPrimary: Colors.orange),),
                          ElevatedButton(
                            onPressed: (){},
                            child: Text("500ml",style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.orange,
                                onPrimary: Color(0xA9A99C9E)),),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
              child: Text("Instruction",style: TextStyle(color: Colors.orange,fontSize: 25),),
            ),
            Expanded(
              child: Container(
                height: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 0, 0),
                      child: Text("Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.",style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: ElevatedButton(
                        onPressed: (){}, child: Text("Add to Cart",style: TextStyle(fontSize: 20),),
                        style: ElevatedButton.styleFrom(
                          primary: Colors.orange,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
    ),
    );
  }
}
