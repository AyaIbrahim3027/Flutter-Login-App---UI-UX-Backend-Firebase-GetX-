import 'package:flutter/material.dart';
import 'package:login/features/core/screens/dashboard/widget/appbar.dart';
import 'package:login/features/core/screens/dashboard/widget/banners.dart';
import 'package:login/features/core/screens/dashboard/widget/categories.dart';
import 'package:login/features/core/screens/dashboard/widget/heading.dart';
import 'package:login/features/core/screens/dashboard/widget/search.dart';
import 'package:login/features/core/screens/dashboard/widget/top_courses.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //Heading
              DashboardHeading(txtTheme: txtTheme),
              const SizedBox(
                height: 20,
              ),

              //Search
              const DashboardSearch(),
              const SizedBox(
                height: 20,
              ),

              //Categories
              const DashboardCategories(),
              const SizedBox(
                height: 20,
              ),

              //Banner
              const DashboardBanner(),
              const SizedBox(
                height: 20,
              ),

              //Top course
              const Text(
                'Top Courses',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const DashboardTopCourses(),
            ],
          ),
        ),
      ),
    );
  }
}
