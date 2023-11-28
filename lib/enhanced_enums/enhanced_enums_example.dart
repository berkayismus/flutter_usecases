import 'package:flutter/material.dart';
import 'package:flutter_usecases/enhanced_enums/enhanced_enums.dart';

class EnhancedEnumsExample extends StatefulWidget {
  const EnhancedEnumsExample({super.key});

  @override
  State<EnhancedEnumsExample> createState() => _EnhancedEnumsExampleState();
}

class _EnhancedEnumsExampleState extends State<EnhancedEnumsExample> {
  final InvoiceType _invoiceType = InvoiceType.corporate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("enhanced enums example"),
      ),
      body: _buildBody(),
    );
  }

  // * pattern-matching
  void patternMathchingOnEnhancedEnums() {
    // * değerleri işlemeyi unutursak ne olur?
    switch (_invoiceType) {
      case InvoiceType.personal:
        debugPrint("personale");
        break;
      case InvoiceType.corporate:
      //case InvoiceType.other:
    }
  }

  Widget _buildBody() {
    return Center(
      child: Text(
        _invoiceType.addressInvoiceTypeId.toString(),
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    );

    /*  return Center(
      child: Text(
        _invoiceType.idAsString(),
        // _invoiceType.getInvoiceName,
        // _invoiceType.print(),
        style: Theme.of(context).textTheme.headlineLarge,
      ),
    ); */
  }
}
