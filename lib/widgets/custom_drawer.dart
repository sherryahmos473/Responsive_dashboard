import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/user_info_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/active_and_not_active.dart';
import 'package:responsive_dashboard/widgets/drawer_items_listview.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
              child: UserInfoListTile(
            item: UserInfoModel(
                image: Assets.imagesAvatar1,
                title: 'Lekan Okeowo',
                subtitle: 'demo@gmail.com'),
          )),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          const DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                NotActive(
                    item: DrawerItemModel(
                        title: 'Setting system', icon: Assets.imagesSetting)),
                NotActive(
                    item: DrawerItemModel(
                        title: 'Logout account', icon: Assets.imagesLogout)),
                const SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
