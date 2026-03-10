import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              image: Assets.images.avatar3.path,
              title: 'Lekan Okeowo',
              subTitle: 'demo@gmail.com',
            ),
          ),
          DrawerItemListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 28,
                right: 20,
                top: 32,
                bottom: 48,
              ),
              child: Column(
                children: [
                  Spacer(),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: 'Setting System',
                      image: Assets.images.settings.path,
                    ),
                  ),
                  InActiveDrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: 'Logout Account',
                      image: Assets.images.logout.path,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
