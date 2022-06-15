import 'package:flutter/cupertino.dart';
import 'package:resep/models/detail_resep_model.dart';
import 'package:resep/models/resep_model.dart';
import 'package:resep/services/resep_service.dart';

class ResepProvider extends ChangeNotifier {
  ResepProvider() {
    showListResep();
  }

  final ResepService _ResepService = ResepService();
  ResepModel resepModel = ResepModel();
  DetailResepModel detailResepModel = DetailResepModel();

  // Show List Resep Data
  showListResep() async {
    resepModel = await _ResepService.getResep();
    notifyListeners();
  }

  // Show Detail Resep Data
  showDetailResep({String? inputKey}) async {
    detailResepModel = await _ResepService.getDetailResep(key: inputKey);
    notifyListeners();
  }
}
