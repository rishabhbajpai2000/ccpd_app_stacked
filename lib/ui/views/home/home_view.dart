import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: const Color(0xff8E97FD),
        foregroundColor: Colors.white,
        onPressed: () {
          viewModel.bottomNavIndex = 2;
          viewModel.rebuildUi();
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: 70,
        notchMargin: 10,
        splashColor: const Color(0xff8E97FD),
        activeColor: const Color(0xff8E97FD),
        icons: viewModel.iconList,
        iconSize: 30,
        elevation: 0,
        blurEffect: true,
        activeIndex: viewModel.bottomNavIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) {
          viewModel.bottomNavIndex = index;
          viewModel.rebuildUi();
        },
      ),
      body: viewModel.pagesList[viewModel.bottomNavIndex],
    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
