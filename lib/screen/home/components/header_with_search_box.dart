import 'package:flutter/material.dart';
import 'package:flutter_design/constants.dart';
import 'package:flutter_svg/svg.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: kDefaultPadding*2.5,
      ),
      // it will cover 20% of our total height
      height: size.height*0.2,
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: size.height*0.2-107,
            ),
            height: size.height*0.2-27,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: [
                Text(
                  "Hi Uishopy!",
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // The most common usage for Spacer is for creating adjustable spaces between widgets in a Flex container, such as Row or Column.
                const Spacer(),
                Image.asset("assets/images/logo.png"),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              height: 54,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                // boxShadow takes in a list of items
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    // this means that it will blur with a radius of 50
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // this gives the textfield a definite width
                  Expanded(
                    child: TextField(
                      onChanged: (value) {},
                      decoration: InputDecoration(
                        hintText: "Search",
                        // this is for the style of the hinttext
                        hintStyle: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                        // this is to remove the input border
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        // this is the icon that that appears after the editable part of the textfield
                        // suffixIcon is not working properly with svg
                        // so we would use row
                        // suffixIcon: SvgPicture.asset("assets/icons/search.svg"),
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/icons/search.svg"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
