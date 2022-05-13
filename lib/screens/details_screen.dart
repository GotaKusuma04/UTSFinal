import 'package:flutter/material.dart';
import 'package:project_uts/model/cars.dart';
import 'package:project_uts/style/colors.dart';
import 'package:project_uts/style/text_style.dart';
import 'package:project_uts/widget/car_details.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key, required this.model}) : super(key: key);
  final CarsModel model;

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

void _showSimpleDialog(context) {
  showDialog(
    context: context,
    builder: (context) {
      return SimpleDialog(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Permintaan Terkirim",
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ),
        ],
      );
    },
  );
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          /* body base layout */
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: "model${widget.model.id}",
                child: Container(
                  height: 400.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24.0),
                      bottomRight: Radius.circular(24.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage(widget.model.car_img_path),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12.0,
              ),
              Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 2,
                          child: Text(
                            widget.model.cars_model,
                            style: AppTextStyle.detailsTextStyle,
                            softWrap: true,
                          ),
                        ),
                        Text(
                          widget.model.price,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Detail Mobil",
                      style: AppTextStyle.mainTitleStyle,
                    ),
                    SizedBox(
                      height: 12.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        carsDetail(Icons.speed, "300Km/h"),
                        carsDetail(Icons.access_time, "3.2s"),
                        carsDetail(Icons.power_sharp, "364hp"),
                        carsDetail(Icons.settings, "automatic"),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: EdgeInsets.all(16.0),
                    width: double.infinity,
                    height: 60.0,
                    child: RawMaterialButton(
                      onPressed: () {
                        _showSimpleDialog(context);
                      },
                      child: Text("Rent Now",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold)),
                      fillColor: AppColor.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          /* navigation menu */
          Padding(
            padding: EdgeInsets.symmetric(vertical: 18.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
