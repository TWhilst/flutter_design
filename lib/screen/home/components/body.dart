import 'package:flutter/material.dart';
import 'package:flutter_design/constants.dart';
import 'package:flutter_design/screen/home/components/featured_plants.dart';
import 'package:flutter_design/screen/home/components/title_with_more_button.dart';
import 'header_with_search_box.dart';
import 'recommend_plants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // this will provide us total height and weight of our screen
    Size size = MediaQuery.of(context).size;
    // it enables scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(title: "Recommended", press: () {},),
          const RecommendPlants(),
          TitleWithMoreButton(title: "Featured plants", press: () {},),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding,),
        ],
      ),
    );
  }
}



