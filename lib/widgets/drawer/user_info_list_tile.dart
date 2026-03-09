import '../../utils/app_imports.dart';

class UserInfoListTile extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  const UserInfoListTile({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28, right: 20, bottom: 8),
      child: Card(
        color: Color(0xffFAFAFA),
        elevation: 0,
        child: ListTile(
          contentPadding: EdgeInsetsGeometry.only(left: 12),
          leading: SvgPicture.asset(Assets.images.avatar3.path),
          title: Text(title, style: AppStyles.styleSemiBold16(context)),
          subtitle: Text(subTitle, style: AppStyles.styleRegular12(context)),
        ),
      ),
    );
  }
}
