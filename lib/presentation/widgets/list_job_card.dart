import 'package:flutter/material.dart';
import 'package:jobbercity/constants/colors.dart';
import 'package:jobbercity/presentation/widgets/custom_text.dart';

class ListJobCard extends StatelessWidget {
  const ListJobCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 35, right: 30, left: 30),
      height: 150,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: lightGrey,
            offset: const Offset(8, 6),
            spreadRadius: 1,
            blurRadius: 12,
          ),
          BoxShadow(
            color: lightGrey,
            offset: const Offset(-6, -4),
            spreadRadius: -1,
            blurRadius: 12,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Sales Executive",
                  color: dark,
                  size: 18,
                  weight: FontWeight.bold,
                ),
                CustomText(
                  text: "11 Oct, 2022",
                  color: yellow,
                  size: 18,
                  weight: FontWeight.w500,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "ESOSA Food System",
                  color: dark,
                  size: 18,
                  weight: FontWeight.w500,
                ),
                CustomText(
                  text: "OnSite",
                  color: dark,
                  size: 18,
                  weight: FontWeight.w500,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_pin,
                      color: yellow,
                      size: 18,
                    ),
                    const SizedBox(width: 5),
                    CustomText(
                      text: "FCT, Abuja",
                      color: dark,
                      size: 16,
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
                CustomText(
                  text: "Applicant 55",
                  color: night,
                  size: 16,
                  weight: FontWeight.w500,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CustomText(
                      text: "Apply",
                      color: yellow,
                      size: 18,
                      weight: FontWeight.bold,
                    ),
                    Icon(
                      Icons.arrow_right_alt,
                      color: yellow,
                      size: 30,
                    ),
                  ],
                ),
                Icon(
                  Icons.favorite_outline,
                  color: yellow,
                  size: 25,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
