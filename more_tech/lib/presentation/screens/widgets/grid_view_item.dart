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
  bool isButton = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MouseRegion(
            onEnter: (_) {
              setState(() {
                isButton = true;
              });
            },
            onExit: (_) {
              setState(() {
                isButton = false;
              });
            },
            child: Stack(
              children: [
                AspectRatio(
                  aspectRatio: 242 / 229,
                  child: Container(
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(8)),
                    child: Image.asset(
                      "assets/images/nft.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                AnimatedPositioned(
                  right: 8,
                  left: 8,
                  bottom: isButton ? 10 : -100,
                  duration: const Duration(milliseconds: 300),
                  child: IntrinsicWidth(
                    child: Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 0),
                                backgroundColor: Colors.blue),
                            child: Text(
                              "Обменять",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(color: AppColors.textWhite),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 7,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size.zero,
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 0),
                                backgroundColor: Colors.red),
                            onPressed: () {},
                            child: Text(
                              "Продать",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(color: AppColors.textWhite),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
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
