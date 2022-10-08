import 'package:flutter/material.dart';
import 'package:more_tech/domain/models/NFT_model.dart';
import 'package:more_tech/presentation/screens/widgets/grid_view_item.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

class NFTItems extends StatelessWidget {
  NFTItems({Key? key}) : super(key: key);

  final List<NFT> nft = List<NFT>.generate(
      15, (index) => NFT(name: "NFTname$index", cost: 102.349, link: ""));

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppColors.containerColor1,
      ),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Ваши NFT-предметы",
              style: Theme.of(context).textTheme.headline3,
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 24,
            ),
            Expanded(
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 12,
                  childAspectRatio: 229 / 305,
                ),
                itemCount: 15,
                itemBuilder: (context, index) {
                  return GridViewItem(nft: nft[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
