
import 'package:flutter/material.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Account/models/account_model.dart';

class AccountItem extends StatelessWidget {
  final AccountModel accountModel ;
  const AccountItem({
    Key? key,
    required this.accountModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(children: [
        Image.asset(
          accountModel.image ?? '',
          width: 30,
        ),
        const SizedBox(
          width: 15,
        ),
         Expanded(
          child: Text(
            accountModel.title ?? '',
            textAlign: TextAlign.left,
            style:const  TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        InkWell(
          onTap: (){},
          child: const Icon(
            Icons.arrow_forward_ios,
            size: 20,
            color: Colors.black,
          ),
        )
      ]),
    );
  }
}
