import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:more_tech/presentation/screens/home_panel.dart';
import 'package:more_tech/presentation/screens/widgets/home_panel_overlay/transaction_screen/buy_item.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';
import 'package:provider/provider.dart';

class TransactionScreen extends StatelessWidget {
  void Function()? onClose;
  TransactionScreen({super.key, this.onClose});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Обмен NFT',
                  style: Theme.of(context).textTheme.headline3,
                ),
                GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: onClose,
                  child: Icon(
                    Icons.close,
                    color: AppColors.divider,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24),
            height: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: AspectRatio(
                    aspectRatio: 179 / 190,
                    child: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      child: Image.asset(
                        "assets/images/nft.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                SvgPicture.asset(
                  'assets/images/arrow.svg',
                  color: AppColors.divider,
                ),
                Flexible(
                  child: AspectRatio(
                    aspectRatio: 179 / 190,
                    child: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(8)),
                      child: Image.asset(
                        "assets/images/nft.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 24),
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  gradient: AppColors.mainGradient),
              child: Consumer<HomePanelModel>(
                builder: (_, model, __) => ElevatedButton(
                  onPressed: () {
                    model.showModalMenu = false;
                    model.nftCount--;
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.symmetric(vertical: 18),
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )),
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        "Обменять",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            ?.copyWith(color: AppColors.textWhite),
                      ),
                    ),
                  ),
                ),
              )),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Divider(
              height: 40,
              color: AppColors.divider,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text('Выберите, с кем хотите совершить обмен',
                style: Theme.of(context).textTheme.headline4),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 10,
                itemBuilder: (_, i) {
                  if (i == 0)
                    return SizedBox(
                      width: 24,
                    );
                  return Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          width: 50,
                          height: 50,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Username',
                          style: Theme.of(context)
                              .textTheme
                              .caption
                              ?.copyWith(color: AppColors.textWhite),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Divider(
              height: 40,
              color: AppColors.divider,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text('Выберите, на что хотите обменять NFT',
                style: Theme.of(context).textTheme.headline4),
          ),
          SizedBox(
            height: 20,
          ),
          GridView.builder(
              padding: EdgeInsets.symmetric(horizontal: 24),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                crossAxisSpacing: 16,
                mainAxisSpacing: 12,
                childAspectRatio: 229 / 305,
              ),
              itemCount: 10,
              itemBuilder: (_, i) => BuyItem()),
        ],
      ),
    );
  }
}
