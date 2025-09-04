import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shop_sprints/constants/color.dart';
import 'package:shop_sprints/constants/fonts.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:shop_sprints/data/offer_data.dart';
import 'package:shop_sprints/data/product_data.dart';
import 'package:shop_sprints/data/swap_item_data.dart';
import 'package:shop_sprints/screens/home/widgets/item_of%20_offer.dart';
import 'package:shop_sprints/screens/home/widgets/item_of_grideview.dart';

import 'package:shop_sprints/screens/home/widgets/swap_item.dart';

class HomeScreen extends StatelessWidget {
  static String routeName="HomeScreen";
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: primaryColor,
        title: Center(child: Text( "ourProducts".tr(),style: AppStyleFont.titlleItemFontW(),)),
        actions: [
          IconButton(
            icon: Icon(Icons.language),
            onPressed: (){
              if(context.locale.languageCode=="en"){
                context.setLocale(Locale("ar"));
              }else{
                context.setLocale(Locale("en"));
              }
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("featuredProducts".tr(),style: AppStyleFont.titlleItemFontB()),
              SizedBox(
                height: 180,
                child: Swiper(
                  itemBuilder: (context, index) {
                    return SwapItem(item:swapItems[index],);
                  },
                  itemCount: swapItems.length,
                  viewportFraction: 0.8,
                  scale: 0.9,
                  autoplay: true,
                  pagination: SwiperPagination(),
                  control: SwiperControl(),
                ),
              ),
              SizedBox(height: 15,),
              Text("shopCollection".tr(),style: AppStyleFont.titlleItemFontB(),),
              SizedBox(height: 15,),
              GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                  mainAxisExtent: 175
              ),
                physics:NeverScrollableScrollPhysics(),
                itemCount:products.length,
                itemBuilder: (BuildContext context, int index) {
                return ItemOfGrideview(product: products[index],);
                },),
              SizedBox(height: 15,),
              Text("hotOffers".tr(),style: AppStyleFont.titlleItemFontB(),),
              SizedBox(height: 15,),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ItemOfOffer(offer: offers[index],),
                ),
                itemCount: offers.length,
              )

            ],
          ),
        ),
      ),
    );
  }
}
