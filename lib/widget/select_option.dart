import 'package:flutter/material.dart';
import 'package:project_uts/style/text_style.dart';

Widget optionSelect() {
  return Container(
    height: 112.0,
    padding: EdgeInsets.symmetric(vertical: 16.0),
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: logos_path.length + 1,
      itemBuilder: (BuildContext context, int index) {
        return SizedBox(
            width: 88.0,
            child: Container(
              margin: EdgeInsets.only(right: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: InkWell(
                child: Container(
                    padding: EdgeInsets.all(8.0),
                    child: index == 0
                        ? Center(
                            child: Text(
                              "All...",
                              style: AppTextStyle.mainTitleStyle,
                            ),
                          )
                        : Image.asset(
                            logos_path[index - 1],
                            fit: BoxFit.contain,
                          )),
              ),
            ));
      },
    ),
  );
}

//logos path
List<String> logos_path = [
  "assets/images/logos/daihatsu.png",
  "assets/images/logos/honda.png",
  "assets/images/logos/suzuki.png",
  "assets/images/logos/toyota.png",
];
