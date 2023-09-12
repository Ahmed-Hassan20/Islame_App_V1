import 'package:flutter/material.dart';
import 'package:islami/home/quran/SuraVerses.dart';
import 'package:islami/my_theme.dart';

class itemSuradetails extends StatelessWidget {
  String content;
  int index;
  itemSuradetails({required this.content,required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$content (${index+1})',
      style: Theme.of(context).textTheme.titleSmall,
      textAlign: TextAlign.center,
      textDirection: TextDirection.rtl,
    );
  }
}
