import 'package:flutter/material.dart';
import 'package:more_tech/domain/models/NFT_model.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

class GridViewItem extends StatefulWidget {
  final NFT nft;

  const GridViewItem({Key? key, required this.nft}) : super(key: key);

  @override
  State<GridViewItem> createState() => _GridViewItemState();
}

class _GridViewItemState extends State<GridViewItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: AppColors.containerColor2),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          widget.nft.name,
          style: Theme.of(context).textTheme.headline3,
        ),
        Text(
          '${widget.nft.cost} ₽',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              ?.copyWith(color: AppColors.textGray),
        ),
      ],
    );
  }
}
