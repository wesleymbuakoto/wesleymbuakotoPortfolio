import 'package:flutter/material.dart';
import 'package:web_portfolio/components/certification_and_education_components/certification_education_cards/all_cards.dart';



class certification_education_cards extends StatelessWidget {
  const certification_education_cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        Center(
          child: Column(
            children: const [


              montclair_card(),
              flutter_card(),
              flutter_lb_card(),
              google_cloud_card(),
              gcp_card(),
              power_bi_card(),
              data_science_card(),
              seo_strategy_card(),
              webdev_access_card(),
              web_fundamentals_card(),
              sql_database_card(),
              sql_bootcamp_card(),



            ],
          )
        );
  }
}
