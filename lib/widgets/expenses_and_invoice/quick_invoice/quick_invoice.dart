import 'package:personal_finance_management_dashboard/utils/app_imports.dart';
import 'package:personal_finance_management_dashboard/widgets/expenses_and_invoice/quick_invoice/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          QuickInvoiceHeader(),
          SizedBox(height: 24),


        ],
      ),
    );
  }
}
