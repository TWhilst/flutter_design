import 'package:flutter/material.dart';
import 'package:flutter_design/constants.dart';

class RecommendPlants extends StatelessWidget {
  const RecommendPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            image: "assets/images/image_1.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {},
          ),
          RecommendPlantCard(
            image: "assets/images/image_2.png",
            title: "Angelica",
            country: "Russia",
            price: 440,
            press: () {},
          ),
          RecommendPlantCard(
            image: "assets/images/image_3.png",
            title: "Samantha",
            country: "Russia",
            price: 440,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class RecommendPlantCard extends StatelessWidget {
  const RecommendPlantCard({
    Key? key, required this.image, required this.title, required this.country, required this.price, required this.press,
  }) : super(key: key);

  final String image, title, country;
  final int price;
  final Function() press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // it will cover 40% of our total width
      width: size.width*0.4,
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding/2,
        bottom: kDefaultPadding*2.5,
      ),
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding/2),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                color: Colors.white,
                // this is used to add shadow to the box
                boxShadow: [
                  BoxShadow(
                    // you can use the Offset to change the "position" of the BoxShadow decoration.
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                        children: [
                          TextSpan(
                            // \n is used to put the text after it to a new line
                              text: "$title\n".toUpperCase(),
                              style: Theme.of(context).textTheme.button
                          ),
                          TextSpan(
                            text: country.toUpperCase(),
                            style: TextStyle(
                              color: kPrimaryColor.withOpacity(0.5),
                            ),
                          ),
                        ]
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$$price",
                    style: Theme.of(context).textTheme.button!.copyWith(
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



