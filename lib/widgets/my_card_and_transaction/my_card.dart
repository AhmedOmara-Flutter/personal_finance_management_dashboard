import '../../utils/app_imports.dart';
import 'card_components.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff5FBEF3),
          image: DecorationImage(image: AssetImage(Assets.images.cardBackground.path,), fit: BoxFit.fill)
        ),
        child: CardComponents() ,
      ),
    );
  }
}


//import '../../utils/app_imports.dart';
// import 'card_components.dart';
//
// class MyCard extends StatelessWidget {
//   const MyCard({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 420 / 215,
//       child: Stack(
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(12),
//               color: Color(0xff5FBEF3),
//               image: DecorationImage(image: AssetImage(Assets.images.cardBackground.path,), fit: BoxFit.fill)
//             ),
//           ),
//           Image.asset(),
//           CardComponents(),
//         ],
//       ),
//     );
//   }
// }