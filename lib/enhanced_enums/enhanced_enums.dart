enum InvoiceType { personal, corporate }

extension InvoiceTypeExtension on InvoiceType {
  int get addressInvoiceTypeId {
    switch (this) {
      case InvoiceType.personal:
        return 1;
      case InvoiceType.corporate:
        return 2;
      default:
        return 1;
    }
  }
}
/*
enum InvoiceType {
  // enhanced enumlar
  // kendi özellikleri(property) ve metodları var
  // typeOfEnum(property)
  // property'ler tanımlanmak zorunda
  personal(1),
  corporate(2),
  other(1);

  // property
  // property'ler final ile tanımlanmalı
  final int id;

  // constructor, const ile tanımlanmalı
  const InvoiceType(this.id);

  // getter
  String get getInvoiceName => name;

  bool get isPersonalInvoice => this == InvoiceType.personal;

  // method
  String idAsString() {
    return id.toString();
  }
}
*/