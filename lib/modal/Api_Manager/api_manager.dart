// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.drinks,
  });

  List<Drink> drinks;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
    drinks: List<Drink>.from(json["drinks"].map((x) => Drink.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "drinks": List<dynamic>.from(drinks.map((x) => x.toJson())),
  };
}

class Drink {
  Drink({
    required this.imageLink,
    required this.drinkName,
    required this.instructions,
  });

  String imageLink;
  String drinkName;
  String instructions;

  factory Drink.fromJson(Map<String, dynamic> json) => Drink(
    imageLink: json["image_link"],
    drinkName: json["DrinkName"],
    instructions: json["Instructions"],
  );

  Map<String, dynamic> toJson() => {
    "image_link": imageLink,
    "DrinkName": drinkName,
    "Instructions": instructions,
  };
}
