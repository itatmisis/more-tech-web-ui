import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

class TransactionScreen extends StatelessWidget {

  void Function()? onClose;
  TransactionScreen({super.key, this.onClose});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Обмен NFT', style: Theme.of(context).textTheme.headline3,),
              GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: onClose,
                child: Icon(Icons.close, color: AppColors.divider,),
              )
            ],
          ),
          SizedBox(height: 40,),
          SizedBox(
            height: 300,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AspectRatio(
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
                SvgPicture.asset('assets/images/arrow.svg', color: AppColors.divider,),
                AspectRatio(
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
              ],
            ),
          ),
          SizedBox(height: 20,),
          Container(
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: AppColors.mainGradient
            ),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  minimumSize: Size.zero,
                  padding: EdgeInsets.symmetric(
                      vertical: 18),
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
          ),
          Divider(
            height: 40,
            color: AppColors.divider,
          ),
          Text('Выберите, с кем хотите совершить обмен', style: Theme.of(context).textTheme.headline4),
        ],
      ),
    );
  }

}