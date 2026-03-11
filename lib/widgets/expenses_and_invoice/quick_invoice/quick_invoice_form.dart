import 'package:personal_finance_management_dashboard/widgets/expenses_and_invoice/quick_invoice/custom_button.dart';
import 'package:personal_finance_management_dashboard/widgets/expenses_and_invoice/quick_invoice/title_text_field.dart';
import '../../../utils/app_imports.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                hint: 'Type customer name',
                title: 'Customer name',
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: TitleTextField(
                hint: 'Type customer email',
                title: 'Customer Email',
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                hint: 'Type customer name',
                title: 'Item name',
              ),
            ),
            SizedBox(width: 12),
            Expanded(
              child: TitleTextField(hint: 'USD ⬇️', title: 'Item mount'),
            ),
          ],
        ),
        SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Add more details',
                onPressed: () {},
                backgroundColor: Colors.white,
                textColor: Color(0xff4EB7F2),
              ),
            ),
            SizedBox(width: 20),
            Expanded(
              child: CustomButton(
                title: 'Send Money',
                onPressed: () {},
                backgroundColor: Color(0xff4EB7F2),
                textColor: Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
