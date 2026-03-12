import 'package:personal_finance_management_dashboard/utils/app_imports.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 17),
          LatestTransaction(),
          SizedBox(height: 17),
          Divider(
            color: Color(0xffF1F1F1),
            thickness: 1,
          ),
          SizedBox(height: 17),
          QuickInvoiceForm(),

        ],
      ),
    );
  }
}
