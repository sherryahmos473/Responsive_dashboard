import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({
    super.key,
  });

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int selectedIndex = 0;
  final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(icon: Assets.imagesDashboard, title: 'Dashboard'),
    DrawerItemModel(icon: Assets.imagesTransaction, title: 'My Transaction'),
    DrawerItemModel(icon: Assets.imagesStatistics, title: 'Statistics'),
    DrawerItemModel(icon: Assets.imagesWallet, title: 'Wallet Account'),
    DrawerItemModel(icon: Assets.imagesInvestments, title: 'My Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if(selectedIndex != index){
            setState(() {
              selectedIndex = index;
            });}
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
                item: drawerItems[index], isActive: selectedIndex == index),
          ),
        );
      },
      itemCount: drawerItems.length,
    );
  }
}
