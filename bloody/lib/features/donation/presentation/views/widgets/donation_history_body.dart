import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/custom_button.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:flutter/material.dart';

class DonationHistoryBody extends StatelessWidget {
  const DonationHistoryBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child:  Column(
        children: [
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40,),
               Text('History',style: Styles.style24Bold,),
               Text('This is your last donation progress helping other people to get a chance for life',style: Styles.style14,),
               const Divider(color: kTextGreyColor,thickness: 1,endIndent: 80,),
              const SizedBox(height: 30,),
              Text('09-08-2023',style: Styles.style14,),
              Text('Donated at Dar El Sallam hospital, Cairo.',style: Styles.style14,),
              const SizedBox(height: 40,),
              Text('11-03-2023',style: Styles.style14,),
              Text('Donated at El Menshawy hospital, Tanta.',style: Styles.style14,),
              const SizedBox(height: 40,),
              Text('19-11-2022',style: Styles.style14,),
              Text('Donated at Naser hospital, Shobra.',style: Styles.style14,),
            ],),
          ),
           CustomButton(ontap: (){}, title: 'Donate'),
        ],
      ),
    );
  }
}