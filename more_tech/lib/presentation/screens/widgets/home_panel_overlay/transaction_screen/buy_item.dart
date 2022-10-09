import 'package:flutter/material.dart';
import 'package:more_tech/presentation/theme/app_colors.dart';

class BuyItem extends StatefulWidget {
  int currentCount = 0;
  
  BuyItem({super.key});

  @override
  State<BuyItem> createState() => _BuyItemState();
}

class _BuyItemState extends State<BuyItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue
            ),
          ),
        ),
        SizedBox(height: 7,),
        Text('Чашка кофе', style: Theme.of(context).textTheme.bodyText2,),
        SizedBox(height: 7,),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            GestureDetector(
              onTap: () => setState(() => widget.currentCount > 0? widget.currentCount-- : 0),
              child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.containerColor2
                  ),
                  child: Center(
                    child: Text('-', style: TextStyle(color: AppColors.textGray),),
                  )
              ),
            ),
            SizedBox(width: 7,),
            Text(widget.currentCount.toString(), style: Theme.of(context).textTheme.bodyText2,),
            SizedBox(width: 7,),
            GestureDetector(
              onTap: () => setState(() => widget.currentCount++),
              child: Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.containerColor2
                  ),
                  child: Center(
                    child: Text('+', style: TextStyle(color: AppColors.textGray),),
                  )
              ),
            ),
          ],
        )
      ],
    );
  }
}