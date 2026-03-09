import '../../utils/app_imports.dart';
import 'drawer_item.dart';

class DrawerItemListView extends StatefulWidget {
  const DrawerItemListView({super.key});

  static final List<DrawerItemModel> drawerItems = [
    DrawerItemModel(title: 'Dashboard', image: Assets.images.dashboard.path),
    DrawerItemModel(
      title: 'My Transactions',
      image: Assets.images.myTransctions.path,
    ),
    DrawerItemModel(title: 'Statistics', image: Assets.images.statistics.path),
    DrawerItemModel(
      title: 'Wallet Accounts',
      image: Assets.images.walletAccount.path,
    ),
    DrawerItemModel(
      title: 'My Investments',
      image: Assets.images.myInvestments.path,
    ),
  ];

  @override
  State<DrawerItemListView> createState() => _DrawerItemListViewState();
}

class _DrawerItemListViewState extends State<DrawerItemListView> {
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(
        left: 28,
        right: 20,
        top: 20,
        bottom: 20,
      ),
      sliver: SliverList.separated(
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              if (activeIndex != index) {
                activeIndex = index;
              }
            });
          },
          child: DrawerItem(
            drawerItemModel: DrawerItemListView.drawerItems[index],
            isActive: activeIndex == index,
          ),
        ),
        separatorBuilder: (context, index) => SizedBox(height: 20),
        itemCount: DrawerItemListView.drawerItems.length,
      ),
    );
  }
}
