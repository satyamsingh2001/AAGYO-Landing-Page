import 'package:aagyolandingpage/colors/colors_const.dart';
import 'package:aagyolandingpage/const/constContainer.dart';
import 'package:aagyolandingpage/const/constString.dart';
import 'package:flutter/material.dart';
import '../../styles/textstyle_const.dart';

class ConstFooter extends StatelessWidget {
  const ConstFooter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ConstantContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(backgroundColor: Colors.grey,),
                        Text(
                          " AAGYO",
                          style: AppTextStyles.kBody20SemiboldTextStyle
                              .copyWith(color: AppColors.neutralDark),
                        )
                      ],
                    ),
                    SizedBox(height:size.height*0.04,),
                    Text("Lorem ipsum dolor sit amet consectetur adipiscing elit aliquam",style: AppTextStyles.kBody17RegularTextStyle.copyWith(color: AppColors.neutralBodyFont),),
                    SizedBox(height: size.height*0.1,),
                    Image.asset(playstore),
                    SizedBox(height: size.height*0.04,),
                    Image.asset(apple),

                  ],
                ),
              ),
            ),
            Expanded(
              child: ConstantContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Company',style: AppTextStyles.kBody20SemiboldTextStyle.copyWith(color: AppColors.neutralDark),),
                    SizedBox(height:size.height*0.04,),
                    ConstTextButton(ontap: (){},text: "About Us"),
                    ConstTextButton(ontap: (){},text:"Careers"),
                    ConstTextButton(ontap: (){},text:"Contact Us"),
                    ConstTextButton(ontap: (){},text:"Terms & Conditions"),
                    ConstTextButton(ontap: (){},text:"Blog"),
                    ConstTextButton(ontap: (){},text:"Privacy Policy"),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ConstantContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Support',style: AppTextStyles.kBody20SemiboldTextStyle.copyWith(color: AppColors.neutralDark),),
                    SizedBox(height:size.height*0.04,),
                    ConstTextButton(ontap: (){},text:"Register as Merchant"),
                    ConstTextButton(ontap: (){},text:"Register as Delivery Boy"),
                    ConstTextButton(ontap: (){},text:"Help"),
                    ConstTextButton(ontap: (){},text:"Chat Support"),

                  ],
                ),
              ),
            ),
            Expanded(
              child: ConstantContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Contact Us',style: AppTextStyles.kBody20SemiboldTextStyle.copyWith(color: AppColors.neutralDark),),
                    SizedBox(height:size.height*0.04,),
                    ConstTextButton(ontap: (){},text:"abc@gmail.com",leading: Icon(Icons.email_outlined,color: AppColors.primary700,)),
                    ConstTextButton(ontap: (){},text:"(414) 687 - 5892",leading: Icon(Icons.phone,color: AppColors.primary700,)),
                    ConstTextButton(ontap: (){},text:"794 Mcallister\nStSan Francisco, 94102",leading: Icon(Icons.location_on_outlined,color: AppColors.primary700,)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      constImg(fb),
                      constImg(twitter),
                      constImg(linkedin),
                      constImg(ig),
                      constImg(yt),

                    ],
                  )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
Widget constImg(img){
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.asset(img,height: 20,width: 20,),
      ),
    );
}
}
class ConstTextButton extends StatelessWidget {
  final VoidCallback ontap;
  final String text;
  final Widget ?leading;
  const ConstTextButton({Key? key, required this.ontap, required this.text, this.leading}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
       leading??SizedBox(width:0),
        TextButton(onPressed:ontap, child: Text(text,style: AppTextStyles.kBody17RegularTextStyle.copyWith(color: AppColors.white60),)),
      ],
    );
  }
}
