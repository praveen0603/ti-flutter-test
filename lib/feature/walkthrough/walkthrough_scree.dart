import 'dart:math';

import 'package:chrconnecthpdraft/feature/walkthrough/components/page_five.dart';
import 'package:chrconnecthpdraft/feature/walkthrough/components/page_four.dart';
import 'package:chrconnecthpdraft/feature/walkthrough/components/page_one.dart';
import 'package:chrconnecthpdraft/feature/walkthrough/components/page_six.dart';
import 'package:chrconnecthpdraft/feature/walkthrough/components/page_three.dart';
import 'package:chrconnecthpdraft/feature/walkthrough/components/page_two.dart';
import 'package:flutter/material.dart';

class WalkthroughScreen extends StatefulWidget {
  const WalkthroughScreen({Key? key}) : super(key: key);

  @override
  State<WalkthroughScreen> createState() => _WalkthroughScreenState();
}

class _WalkthroughScreenState extends State<WalkthroughScreen> {
  int _selectedPageIndex = 0;

  void _selectPage() {
    //log(index);
    setState(() {
      _selectedPageIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = PageOne(
      onPressNext: () {
        _selectPage();
      },
    );
    log(_selectedPageIndex);
    if (_selectedPageIndex == 1) {
      activePage = PageTwo(onPressNext: () {
        _selectPage();
      });
    }

    if (_selectedPageIndex == 2) {
      activePage = PageThree(onPressNext: () {
        _selectPage();
      });
    }

    if (_selectedPageIndex == 3) {
      activePage = PageFour(onPressNext: () {
        _selectPage();
      });
    }

    if (_selectedPageIndex == 4) {
      activePage = PageFive(onPressNext: () {
        _selectPage();
      });
    }

    if (_selectedPageIndex == 5) {
      activePage = PageSix(onPressNext: () {
        _selectPage();
      });
    }

    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondaryContainer,
        ),
        child: activePage,
      ),
    );
  }
}