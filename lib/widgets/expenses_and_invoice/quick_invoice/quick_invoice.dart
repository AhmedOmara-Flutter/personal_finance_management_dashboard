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
          SizedBox(height: 20),
          LatestTransaction(),
          SizedBox(height: 15),
          Divider(
            color: Color(0xffF1F1F1),
            thickness: 1,
          ),
          SizedBox(height: 15),
          QuickInvoiceForm(),

        ],
      ),
    );
  }
}
