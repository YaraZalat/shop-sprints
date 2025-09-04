import 'package:flutter/material.dart';
import 'package:shop_sprints/constants/fonts.dart';

import '../../../models/swap_item_model.dart';
class SwapItem extends StatelessWidget {
  const SwapItem({super.key, required this.item});
   final SwapItemModel item;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20)
      ),
      clipBehavior: Clip.hardEdge,
      child: Stack(
        alignment: AlignmentGeometry.bottomLeft,
        children: [
          Image.network(
            item.image,
            fit: BoxFit.cover,
          ),
          //Professional Workspace
          Padding(padding: EdgeInsetsGeometry.only(left: 8,bottom: 25),
          child: Text(item.title,style: AppStyleFont.titleButtW(),)),
        ],
      ),
    );
  }
}
