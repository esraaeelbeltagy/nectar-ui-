// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:grocery/view/components/custom_button.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Account/components/account_item.dart';
import 'package:grocery/view/screens/Bottom_Nav_Bar/Account/models/account_model.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ListTile(
              leading: CircleAvatar(
                radius: 30,
                child: Image.asset('assets/images/Account/person.png'),
              ),
              title: const Row(
                children: [
                  Text(
                    'Afsar Hossen',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.edit_outlined,
                    color: Color(0xff53B175),
                  )
                ],
              ),
              subtitle: const Text('Imshuvo97@gmail.com'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 0, bottom: 0),
              itemBuilder: (context, index) =>  AccountItem(accountModel: accountList[index]),
              separatorBuilder: (context, index) => const Divider(),
              itemCount: accountList.length),
          const Divider(),
          Padding(
            padding:
                const EdgeInsets.only(top: 35, bottom: 20, left: 20, right: 20),
            child: CustomButton(
              color: Colors.white,
              text: 'Log Out',
              textColor: const Color(0xff53B175),
              clickCallback: () {},
            ),
          ),
          const SizedBox(height: 50,),
        ]),
      ),
    );
  }
}

