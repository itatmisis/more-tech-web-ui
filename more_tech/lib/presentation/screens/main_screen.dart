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
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        children: [
          Column(
            children: const [
              Profile(),
              SizedBox(
                height: 36,
              ),
              Balance(),
              SizedBox(
                height: 24,
              ),
              TransactionHistory(),
            ],
          ),
          const SizedBox(
            width: 24,
          ),
          Column(
            children: const [NFTItems()],
          ),
        ],
      ),
    );
  }
}
