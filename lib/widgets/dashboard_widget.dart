import 'package:dashboard_ui/widgets/activity_details_widget.dart';
import 'package:dashboard_ui/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class DashboardWidget extends StatelessWidget {
  const DashboardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 18,),
        HeaderWidget(),
        SizedBox(height: 0,),
        ActivityDetailsWidget()
      ],
    );
  }
}