import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movies_app/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({Key? key, required this.padding}) : super(key: key);

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Constants.kGreyColor.withOpacity(0.12),
        ),
        child: Row(
          children: [
            const SizedBox(width: 8),
            SvgPicture.asset(Constants.kIconSearch),
            const SizedBox(width: 8),
            Expanded(
              child: TextField(
                style: TextStyle(
                  color: Constants.kWhiteColor.withOpacity(0.6),
                  fontSize: 17,
                  letterSpacing: -0.41,
                ),
                decoration: InputDecoration(
                  hintText: "Search",
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                    color: Constants.kWhiteColor.withOpacity(0.6),
                    fontSize: 17,
                    letterSpacing: -0.41,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 8),
            SvgPicture.asset(Constants.kIconMic),
            const SizedBox(width: 8),
          ],
        ),
      ),
    );
  }
}
