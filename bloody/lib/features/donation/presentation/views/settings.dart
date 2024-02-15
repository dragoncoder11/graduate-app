import 'package:bloody/core/utils/styles.dart';
import 'package:bloody/features/donation/presentation/views/widgets/settings_body.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  static const id='srttings';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(leading: IconButton(onPressed: (){Navigator.pop(context);}, icon:const Icon( Icons.arrow_back_ios)),elevation: 0,backgroundColor: Colors.transparent,title: Text('App Setting',style: Styles.styles18Bold,),centerTitle: true,),
          body: const SettingsBody(),
    );
  }
}