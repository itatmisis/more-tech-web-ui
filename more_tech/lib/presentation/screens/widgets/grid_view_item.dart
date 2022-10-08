import 'package:flutter/material.dart';
import 'package:more_tech/domain/models/NFT_model.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GridViewItem extends StatefulWidget {
  final NFT nft;

  const GridViewItem({Key? key, required this.nft}) : super(key: key);

  @override
  State<GridViewItem> createState() => _GridViewItemState();
}

class _GridViewItemState extends State<GridViewItem> {
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 305/229,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
              child: SvgPicture.asset("assets/images/nft.svg"),
            ),
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
      ),
    );
  }
}
