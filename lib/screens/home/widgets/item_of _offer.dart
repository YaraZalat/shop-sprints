import 'package:flutter/material.dart';

import '../../../constants/color.dart';
import '../../../constants/fonts.dart';
import '../../../models/offer.dart';
class ItemOfOffer extends StatelessWidget {
  const ItemOfOffer({super.key, required this.offer});
  final Offer offer;

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 8,
              offset: Offset(0, 3)
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(offer.title,style: AppStyleFont.titleButtB(),),
                SizedBox(
                    width: 150,
                    child: Text(offer.Subtitle,style: AppStyleFont.subTitleButtB(),overflow: TextOverflow.clip,maxLines: 2,softWrap: true,)),

              ],
            ),
            Container(
              width: 90,
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: primaryColor
              ),
              child: Center(child: Text(offer.offrCount,style: AppStyleFont.titleButtW(),)),
            )
          ],
        ),
      ),

    );
  }
}
