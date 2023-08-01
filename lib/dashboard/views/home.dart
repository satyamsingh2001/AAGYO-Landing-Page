import 'package:aagyolandingpage/colors/colors_const.dart';
import 'package:aagyolandingpage/const/constContainer.dart';
import 'package:aagyolandingpage/const/constString.dart';
import 'package:aagyolandingpage/dashboard/widgets/const_carousal.dart';
import 'package:aagyolandingpage/dashboard/widgets/const_gridview.dart';
import 'package:aagyolandingpage/styles/textstyle_const.dart';
import 'package:flutter/material.dart';
import 'footer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColors.white,
        leadingWidth: size.width * 2,
        leading: Row(
          children: [
            SizedBox(width: size.width*0.02,),
            const CircleAvatar(backgroundColor: Colors.grey,),
            Text(
              " AAGYO",
              style: AppTextStyles.kBody20SemiboldTextStyle
                  .copyWith(color: AppColors.neutralDark),
            )
          ],
        ),
        actions: [
          Flexible(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Register as a Delivery Boy",
                style: AppTextStyles.kBody20RegularTextStyle
                    .copyWith(color: AppColors.white100),
              ),
            ),
          ),
          Flexible(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "About Us",
                style: AppTextStyles.kBody20RegularTextStyle
                    .copyWith(color: AppColors.white100),
              ),
            ),
          ),
          Flexible(
            child: TextButton(
              onPressed: () {},
              child: Text(
                "Help",
                style: AppTextStyles.kBody20RegularTextStyle
                    .copyWith(color: AppColors.white100),
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              children: [
                 SizedBox(
                  height: size.height*.05,
                ),
                Text(
                  "Empowering Small Towns & Rural India with ",
                  style: AppTextStyles.k24RegularTextStyle
                      .copyWith(color: AppColors.neutralDark),
                ),
                 SizedBox(
                  height: size.height*.01,
                ),
                Text(
                  "AAGYO'S Hyperlocal",
                  style: AppTextStyles.kLargeTitleTextStyle
                      .copyWith(color: AppColors.neutral90),
                ),
                Text(
                  "Marketplace Connectivity",
                  style: AppTextStyles.kLargeTitleTextStyle
                      .copyWith(color: AppColors.neutral90),
                ),
                 SizedBox(
                   height: size.height*.05,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ConstantContainer(
                      height: size.height * .08,
                      width: size.width * .2,
                      color: AppColors.primary700,
                      radiusBorder: 5,
                      shadowColor: AppColors.primary700,
                      offset: const Offset(0, 3),
                      blurradius: 2,
                      spreadradius: 2,
                      child: Center(
                        child: Text(
                          "Download App",
                          style: AppTextStyles.kBody20SemiboldTextStyle
                              .copyWith(color: AppColors.white),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Register as a Delivery Boy",
                        style: AppTextStyles.kBody20SemiboldTextStyle
                            .copyWith(color: AppColors.neutralDark),
                      ),
                    ),
                  ],
                ),
                 SizedBox(
                   height: size.height*.05,
                ),
                ConstCarousel(),
                 SizedBox(
                   height: size.height*.07,
                ),
                ConstantContainer(
                  height: size.height * .06,
                  width: size.width * .1,
                  color: AppColors.white,
                  shadowColor: AppColors.white30,
                  offset: const Offset(0, 3),
                  spreadradius: 2,
                  blurradius: 3,
                  radiusBorder: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: Image.asset(light,height: 20,width: 20,)),
                      Expanded(
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "App",
                                  style: AppTextStyles.kBody15RegularTextStyle
                                      .copyWith(color: AppColors.primary700)),
                              TextSpan(
                                  text: " Feature",
                                  style: AppTextStyles.kBody15RegularTextStyle
                                      .copyWith(color: AppColors.white100)),
                            ])),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.07,
                ),
                Text(
                  "What Makes Our App Different? ",
                  style: AppTextStyles.k48.copyWith(color: AppColors.neutral90),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Text(
                  "Discover the Best of Your Neighborhood with our Hyperlocal",
                  style: AppTextStyles.kBody20RegularTextStyle
                      .copyWith(color: AppColors.neutralDark),
                ),
                Text(
                  "Marketplace ",
                  style: AppTextStyles.kBody20RegularTextStyle
                      .copyWith(color: AppColors.neutralDark),
                ),
                SizedBox(
                  height: size.height * 0.08,
                ),
                Padding(
                    padding:  EdgeInsets.symmetric(
                        horizontal: size.width * .1, vertical: 10),
                    child: ConstGridView()),
                SizedBox(height: size.height*.1,),
                ConstantContainer(
                  width:size.width,
                  color: AppColors.neutralBorder,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            RichText(text: TextSpan(
                              children: [
                                TextSpan(text: "Enjoy the Convenience of\n",style: AppTextStyles.k48.copyWith(color: AppColors.neutral90))
                                ,TextSpan(text: "Hyperlocal",style: AppTextStyles.k48.copyWith(color: AppColors.primary700)),
                                TextSpan(text: " Shopping",style: AppTextStyles.k48.copyWith(color: AppColors.neutral90)),
                              ]
                            )),
                              SizedBox(
                                height: size.height * 0.08,
                              ),
                              constRow(twnty,"Shop locally and save time with our app"),
                              constRow(shop,"Say goodbye to the hassle of traditional shopping"),
                              constRow(truck,"Enjoy the benefits of online shopping with same-day delivery"),
                              constRow(people,"Support your community while enjoying high-quality products"),
                            ],
                          ),
                        ),
                        // const Spacer(),
                        Expanded(child: Image.asset(twomobile))
                      ],
                    ),
                  ),
                ),
                SizedBox(height: size.height*.1,),
                ConstantContainer(
                  height: size.height * .06,
                  width: size.width * .15,
                  color: AppColors.white,
                  shadowColor: AppColors.white30,
                  offset: const Offset(0, 3),
                  spreadradius: 2,
                  blurradius: 3,
                  radiusBorder: 50,
                  child: Row(
                    children: [
                      Expanded(child: Icon(Icons.mobile_screen_share,color: AppColors.primary700,)),
                      Expanded(
                        child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: " Awesome ",
                                  style: AppTextStyles.kBody15RegularTextStyle
                                      .copyWith(color: AppColors.primary700)),
                              TextSpan(
                                  text: " Interface",
                                  style: AppTextStyles.kBody15RegularTextStyle
                                      .copyWith(color: AppColors.white100)),
                            ])),
                      )
                    ],
                  ),
                ),
                SizedBox(height: size.height*.1,),
                Text(
                  "Simple & Beautiful Interface ",
                  style: AppTextStyles.k48.copyWith(color: AppColors.neutral90),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Text(
                  "Our app's simple and beautiful interface makes it easy to find what you need.",
                  style: AppTextStyles.kBody20RegularTextStyle
                      .copyWith(color: AppColors.neutralDark),
                ),
                SizedBox(height: size.height*.07,),
                Stack(
                  children: [
                    Column(
                      children: [
                        ConstCarousel(),
                        SizedBox(
                          height:size.height*.2,
                        ),
                        ConstantContainer(
                          height:size.height*0.75,
                          width:size.width,
                          color: AppColors.primary700,
                          child: Padding(
                            padding:  EdgeInsets.symmetric(horizontal: size.width*.05,vertical: size.height*.1,),
                            child:
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("AAGYO App is Available\nFor All Devices",style: AppTextStyles.k48.copyWith(color: AppColors.white),),
                                SizedBox(
                                  height: size.height * 0.08,
                                ),
                                Text("Say goodbye to the hassle of\ntraditional shopping",style: AppTextStyles.kBody20RegularTextStyle.copyWith(color: AppColors.white30),),
                                SizedBox(height: size.height*.01,),
                                Row(
                                  children: [
                                    Image.asset(playstore),
                                    SizedBox(width: size.width*0.005,),
                                    Image.asset(apple),
                                  ],
                                ),

                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: size.height*.1,),
                        Text(
                          "Frequently Asked Questions ",
                          style: AppTextStyles.k48.copyWith(color: AppColors.neutral90),
                        ),
                        SizedBox(
                          height: size.height * 0.08,
                        ),
                        Text(
                          "Our app's simple and beautiful interface makes it easy to find what you need.",
                          style: AppTextStyles.kBody20RegularTextStyle
                              .copyWith(color: AppColors.neutralDark),
                        ),
                      ],
                    ),
                    Positioned(
                        right: size.width*.05,
                        bottom:size.height*.265,
                        child:  Image.asset(deliveryBoy)),
                  ],
                ),
                const ConstListile(text: "What is AAGYO ?"),
                const ConstListile(text: "How to register as Merchant on AAGYO ?"),
                const ConstListile(text: "Does AAGYO Deliver the items on the same day ?"),
                const ConstListile(text: "Why I need to download the app for Ordering ?"),
                const ConstListile(text: "What are the locations does AAGYO deliver ?"),
                const ConstListile(text: "What are the steps of registering as a merchant on AAGYO ?",subtitle: "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here",),
                SizedBox(height: size.height*.2,),
                const ConstFooter(),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Divider(thickness: 1,color: AppColors.white40,),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: (){},
                          child: Text("Copy @ 2022",style: AppTextStyles.kBody17RegularTextStyle.copyWith(color: AppColors.white100),)),
                      const Spacer(),
                      TextButton(
                          onPressed: (){},child: Text("All Rights Reserverd  |",style: AppTextStyles.kBody17RegularTextStyle.copyWith(color: AppColors.white100),)),
                      TextButton(
                          onPressed: (){},child: Text("Terms & Conditions  |",style: AppTextStyles.kBody17RegularTextStyle.copyWith(color: AppColors.white100),)),
                      TextButton(
                          onPressed: (){},child: Text("Privacy Policy",style: AppTextStyles.kBody17RegularTextStyle.copyWith(color: AppColors.white100),)),

                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget constRow(String img,name){
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ConstantContainer(
              color: AppColors.white,
              radiusBorder: 3,
              borderColor: AppColors.white80,
              child: Image.asset(img,height: 50,width: 50,)),
        ),
        Expanded(child: Text(name,style: AppTextStyles.kBody20RegularTextStyle.copyWith(color:AppColors.neutralBodyFont),)),
      ],
    );
  }

}
class ConstListile extends StatelessWidget {
  final String text;
  final String ?subtitle;
  const ConstListile({Key? key, required this.text, this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          elevation: 5,
          color: AppColors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
          child: ListTile(
            title:Text(text,style: AppTextStyles.kBody20SemiboldTextStyle.copyWith(color: AppColors.neutral90),),
              subtitle:Text(subtitle??"",style: AppTextStyles.kBody17RegularTextStyle.copyWith(color: AppColors.neutral70),),
            trailing: const Icon(Icons.keyboard_arrow_down,color: AppColors.neutral70,),
          ),
        ),
      ),
    );
  }
}
