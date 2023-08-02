import 'package:aagyolandingpage/colors/colors_const.dart';
import 'package:aagyolandingpage/const/constString.dart';
import 'package:aagyolandingpage/styles/textstyle_const.dart';
import 'package:flutter/material.dart';

class ConstGridView extends StatelessWidget {
  const ConstGridView({super.key});

  @override
  Widget build(BuildContext context) {

    final List img = [grocery, food, medicine, onDemand];
    final List name = [
      "Grocery",
      "Medicine",
      "Food",
      "On-Demand Delivery",
    ];
    final List text = [
      "Our hyperlocal marketplace connects you to nearby grocery stores, allowing you to browse and order items online for delivery straight to your doorstep. Say goodbye to long drives and crowded stores.",
      "Our hyperlocal marketplace connects you to nearby pharmacies, offering same-day delivery for prescriptions. Never stress about running out of medicine again with our convenient and reliable service.",
      "Our hyperlocal marketplace connects you with nearby restaurants and food vendors, providing easy access to a variety of local cuisine. Enjoy the best food your city has to offer with our convenient platform.",
      "With our on-demand delivery service, get what you need when you need it. Our app connects you with nearby couriers for urgent deliveries, whether it's a last-minute gift or an important document.",
    ];

    Size size = MediaQuery.of(context).size;
    return GridView.builder(
      shrinkWrap: true,
      physics:  const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // Number of columns in the grid
          crossAxisSpacing: size.width*.05, // Spacing between columns
          mainAxisSpacing:  size.height*.005,
          mainAxisExtent: size.height*.7,
          childAspectRatio:  3/2,
      ),
      itemCount: 4,
      itemBuilder: (context, index) {
        // Return a grid item widget based on the index
        return Wrap(
          children: [
            Card(
              elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    children: [
                      Image.asset(
                        img[index],
                        height: 150,
                        width: 150,
                      ),
                      Text(
                        name[index],
                        style: AppTextStyles.kBody20SemiboldTextStyle
                            .copyWith(color: AppColors.neutralDark),
                      ),
                      SizedBox(height: size.height*0.07,),
                      Text(
                        text[index],
                        style: AppTextStyles.kBody17RegularTextStyle
                            .copyWith(color: AppColors.neutralDark),
                      ),
                    ],
                  ),
                ),
              // ),
            ),
          ],
        );
      },
    );
  }

}
