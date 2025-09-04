import 'package:flutter/material.dart';
import 'package:shop_sprints/constants/fonts.dart';
import 'package:shop_sprints/screens/welcome/widget/custom_button.dart';

import '../../constants/color.dart';
import '../auth/sign_in_screen.dart';
import '../auth/sign_up_screen.dart';


class WelcomeScreen extends StatelessWidget {
  static String routeName="WelcomeScreen";
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('ShopCraft', style: AppStyleFont.boldFont()),
        backgroundColor: Colors.transparent,
        ),
        backgroundColor:primaryColor ,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            Text('Your Premium Shopping Experience', style: AppStyleFont.regularFont()),
            SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/welcom_image.jpg',width: 150,),
                Image.network('https://images.unsplash.com/photo-1488590528505-98d2b5aba04b?w=300&h=200&fit=crop', width: 150),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomButton(
                  backgroundColor: WidgetStatePropertyAll(Colors.white),
                  text: 'Sign Up',
                  style: AppStyleFont.titleButtP(),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SignUpScreen())),
                ),
                SizedBox(width: 10,),
                CustomButton(
                  text: 'Sign In',
                  style: AppStyleFont.titleButtP(),
                  onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (_) => SignInScreen())),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
