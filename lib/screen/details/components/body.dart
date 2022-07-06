import 'package:flutter/material.dart';
import 'package:flutter_design/constants.dart';
import 'icons_and_image.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          IconsAndImage(size: size),
          const TitleAndPrice(title: "Angelica", country: "Russia", price: 440,),
          const SizedBox(height: kDefaultPadding,),
          Row(
            children: [
              SizedBox(
                width: size.width/2,
                height: 84,
                child: FlatButton(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: const Text(
                    "Buy now",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: const Text(
                    "Description",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


