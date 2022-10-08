import 'package:flutter/material.dart';
import 'package:more_tech/presentation/screens/widgets/balance_widget.dart';
import 'package:more_tech/presentation/screens/widgets/nft_items_widget.dart';
import 'package:more_tech/presentation/screens/widgets/profile_widget.dart';
import 'package:more_tech/presentation/screens/widgets/transaction_history_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),

      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Column(
              children: const [
                Expanded(
                  child: Profile(),
                  flex: 2,
                ),
                SizedBox(
                  height: 36,
                ),
                Expanded(child: Balance(),flex: 1,),
                SizedBox(
                  height: 24,
                ),
                Expanded(child: TransactionHistory(), flex: 6,),
              ],
            ),
          ),
          const SizedBox(
            width: 24,
          ),
          Expanded(
            flex: 3,
            child: Column(
              children:  [Expanded(child: NFTItems(),flex: 1,)],
            ),
          ),
        ],
      ),
    );
  }
}
