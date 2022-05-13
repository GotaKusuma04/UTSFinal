import 'package:flutter/material.dart';
import 'package:project_uts/model/cars.dart';
import 'package:project_uts/style/colors.dart';
import 'package:project_uts/style/search_bar.dart';
import 'package:project_uts/style/text_style.dart';
import 'package:project_uts/widget/car_card.dart';
import 'package:project_uts/widget/select_option.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.secondaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150.0,
                padding: EdgeInsets.symmetric(vertical: 18.0),
                child: Text(
                  "Yuk Rental Mobil Sekarang",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                "Choose your Favorite Car",
                style: AppTextStyle.mainTitleStyle,
              ),
              optionSelect(),
              SizedBox(
                height: 12.0,
              ),
              search_bar(),
              SizedBox(
                height: 12.0,
              ),
              Text("Latest Model", style: AppTextStyle.mainTitleStyle),
              SizedBox(
                height: 12.0,
              ),
              Column(
                children: cars_list.map((e) => car_card(e, context)).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

//List mobil
List<CarsModel> cars_list = [
  CarsModel(
      id: 0,
      car_img_path: "assets/images/agya.jpg",
      cars_model: "Toyota Agya",
      carColor: CarColor(carsColor: Colors.blue, colorName: "Blue Chrome"),
      price: "Rp 250.000/hari"),
  CarsModel(
      id: 1,
      car_img_path: "assets/images/ertiga.jpg",
      cars_model: "Suzuki Ertiga",
      carColor: CarColor(carsColor: Colors.blue, colorName: "Blue Chrome"),
      price: "Rp 300.000/hari"),
  CarsModel(
      id: 2,
      car_img_path: "assets/images/jazz.jpg",
      cars_model: "Honda Jazz",
      carColor: CarColor(carsColor: Colors.blue, colorName: "Blue Chrome"),
      price: "Rp 250.000/hari"),
  CarsModel(
      id: 3,
      car_img_path: "assets/images/pickup.jpg",
      cars_model: "Daihatsu Grandmax",
      carColor: CarColor(carsColor: Colors.blue, colorName: "Blue Chrome"),
      price: "Rp 150.000/hari"),
  CarsModel(
      id: 4,
      car_img_path: "assets/images/rush.jpg",
      cars_model: "Toyota Rush",
      carColor: CarColor(carsColor: Colors.blue, colorName: "Blue Chrome"),
      price: "Rp 350.000/hari"),
  CarsModel(
      id: 5,
      car_img_path: "assets/images/velos.jpg",
      cars_model: "Toyota Velos",
      carColor: CarColor(carsColor: Colors.blue, colorName: "Blue Chrome"),
      price: "Rp 200.000/hari"),
];
