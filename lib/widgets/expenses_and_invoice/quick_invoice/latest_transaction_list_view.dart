import '../../../models/user_info_model.dart';
import '../../../utils/app_imports.dart';

class LatestTransactionListView extends StatelessWidget {
  LatestTransactionListView({super.key});

  final List<UserInfoModel> userInfoModel = [
    UserInfoModel(image: Assets.images.avatar1.path,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20Madraniadi20@gmail'),
    UserInfoModel(image: Assets.images.avatar2.path,
        title: 'Josua Nunito',
        subTitle: 'Josh Nunito@gmail.com'),
    UserInfoModel(image: Assets.images.avatar1.path,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children:userInfoModel.map((e){
          return  IntrinsicWidth(child: UserInfoListTile(userInfoModel: e,));
        }).toList(),
      ),
    );
    // return SizedBox(
    //   height: 200,
    //   child: ListView.separated(
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: userInfoModel[index],)),
    //     separatorBuilder: (context, index) => SizedBox(width: 12,),
    //     itemCount: userInfoModel.length,
    //   ),
    // );
  }
}
