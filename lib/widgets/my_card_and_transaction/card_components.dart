import '../../utils/app_imports.dart';

class CardComponents extends StatelessWidget {
  const CardComponents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ListTile(
          contentPadding: EdgeInsets.only(left: 25, right: 42, top: 12),
          title: Text(
            'Name card',
            style: AppStyles.styleRegular16(
              context,
            ).copyWith(color: Colors.white),
          ),
          subtitle: Text(
            'Syah Bandi',
            style: AppStyles.styleMedium20(context),
          ),
          trailing: SvgPicture.asset(Assets.images.gallery.path),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 20, bottom: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '0918 8124 0042 8129',
                style: AppStyles.styleSemiBold24(
                  context,
                ).copyWith(color: Colors.white),
              ),
              Text(
                '12/20 - 124',
                style: AppStyles.styleRegular16(
                  context,
                ).copyWith(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
