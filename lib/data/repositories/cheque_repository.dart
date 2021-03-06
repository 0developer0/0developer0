import 'package:mobile_bank_checkque/data/dataproviders/cheque_api.dart';
import 'package:mobile_bank_checkque/data/models/cheque.dart';
import 'package:mobile_bank_checkque/main.dart';

class ChequeRepository {
  searchCheques({String? query, List<FilterItems>? filter}) {
    List<Cheque> cheques = ChequeApi().cheques;
    List<Cheque> filteredCheques = [];

    for(var i = 0; i < cheques.length; i++) {
      if (cheques is Cheque) {
        filteredCheques.add(cheques[i]);
      }
    }

    return filteredCheques;
  }
}