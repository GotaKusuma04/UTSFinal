import 'package:flutter/material.dart';

class CarsModel {
  int? id;
  String cars_model;
  String price;
  CarColor? carColor;
  String car_img_path;

  CarsModel({
    this.id,
    this.cars_model = "",
    this.price = "",
    this.carColor,
    this.car_img_path = "",
  });
}

class CarColor {
  String colorName = "";
  Color carsColor = Colors.white;

  CarColor({this.carsColor = Colors.white, this.colorName = "White"});
}
