import 'package:personal_finance_management_dashboard/utils/app_imports.dart';
import 'package:personal_finance_management_dashboard/utils/config_size.dart';

class AdaptiveLayout extends StatelessWidget {
  final WidgetBuilder mobileLayout, tabletLayout, desktopLayout;

  const AdaptiveLayout({
    super.key,
    required this.mobileLayout,
    required this.tabletLayout,
    required this.desktopLayout,
  });

  @override
  Widget build(BuildContext context) {
    // return LayoutBuilder(
    //   builder: (context, constraints) {
    //     print('max height: ${constraints.maxHeight}');
    //     print('media query height: ${MediaQuery.sizeOf(context).height}');
    //     print('max width: ${constraints.maxWidth}');
    //     print('media query width: ${MediaQuery.sizeOf(context).width}');
    //
    //
    //
    //     if (constraints.maxWidth < 800) {
    //       return mobileLayout(context);
    //     } else if (constraints.maxWidth < 1200) {
    //       return tabletLayout(context);
    //     } else {
    //       return desktopLayout(context);
    //     }
    //   },
    // );
    final width = MediaQuery.sizeOf(context).width;
    print('media query height: ${MediaQuery.sizeOf(context).height}');
    print('media query width: ${MediaQuery.sizeOf(context).width}');

    if (width < ConfigSize.tablet) {
      return mobileLayout(context);
    } else if (width < ConfigSize.desktop) {
      return tabletLayout(context);
    } else {
      return desktopLayout(context);
    }
  }
}
