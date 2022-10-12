import 'package:flutter/material.dart';
import 'package:jobbercity/constants/colors.dart';
import 'package:jobbercity/presentation/widgets/custom_text.dart';
import 'package:jobbercity/presentation/widgets/list_job_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: night,
        leading: Icon(
          Icons.menu,
          color: yellow,
          size: 30,
        ),
        title: Center(
          child: CustomText(
            text: "Jobbercity",
            color: yellow,
            size: 30,
            weight: FontWeight.bold,
          ),
        ),
        actions: [
          Icon(
            Icons.search,
            color: yellow,
            size: 40,
          ),
          const SizedBox(width: 5),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const ListJobCard();
        },
      ),
    );
  }
}
