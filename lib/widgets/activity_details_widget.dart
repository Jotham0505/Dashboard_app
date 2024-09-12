import 'package:dashboard_ui/data/health_details_data.dart';
import 'package:dashboard_ui/widgets/custom_card_widget.dart';
import 'package:flutter/material.dart';

class ActivityDetailsWidget extends StatelessWidget {
  const ActivityDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final healthDetails = HealthDetailsData();

    return GridView.builder(
      itemCount: healthDetails.healthData.length,
      shrinkWrap: true,
      physics: ScrollPhysics(),
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 15,
        mainAxisSpacing: 12
      ),
      itemBuilder: (BuildContext context, int index) => CustomCard( // custom card
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              healthDetails.healthData[index].icon,
              width: 30,
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}