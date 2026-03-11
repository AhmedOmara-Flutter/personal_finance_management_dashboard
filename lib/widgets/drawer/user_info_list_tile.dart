import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class UserInfoListTile extends StatelessWidget {
  final UserInfoModel userInfoModel;
  const UserInfoListTile({
    super.key, required this.userInfoModel,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Color(0xffFAFAFA),
      elevation: 0,
      child: ListTile(
        contentPadding: EdgeInsetsGeometry.symmetric(horizontal: 12),
        horizontalTitleGap: 10,
        leading: SvgPicture.asset(userInfoModel.image),
        title: Text(userInfoModel.title, style: AppStyles.styleSemiBold16(context)),
        subtitle: Text(userInfoModel.subTitle, style: AppStyles.styleRegular12(context)),
      ),
    );
  }
}
