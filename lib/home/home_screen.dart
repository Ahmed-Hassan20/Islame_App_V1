import 'package:flutter/material.dart';
import 'package:islami/bottom_nav_item.dart';
import 'package:islami/home/hadeth/Hadeth.dart';
import 'package:islami/home/quran/Quran.dart';
import 'package:islami/home/radio/Radio.dart';
import 'package:islami/home/sebha/Sebha.dart';
import 'package:islami/my_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'homescreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedindex=0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/default_bg.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor
            ),
            child: BottomNavigationBar(currentIndex: selectedindex,
                onTap: (index){
              selectedindex=index;
              setState(() {

              });
                }
                ,items: [

              bottom_nav_item(icon:ImageIcon(AssetImage('assets/images/icon_quran.png')) ,label:'Quran' ),
              bottom_nav_item(icon:ImageIcon(AssetImage('assets/images/icon_hadeth.png')) ,label:'Hadeth' ),
              bottom_nav_item(icon:ImageIcon(AssetImage('assets/images/icon_sebha.png')) ,label:'Sebha' ),
              bottom_nav_item(icon:ImageIcon(AssetImage('assets/images/icon_radio.png')) ,label:'Radio' ),

            ]),
          ),
          body: tabs[selectedindex],
        )
      ],
    );
  }
  List<Widget> tabs=[quran(),hadeth(),sebha(),radio()];
}

