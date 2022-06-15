import 'package:dio/dio.dart';
import 'package:resep/models/detail_resep_model.dart';
import 'package:resep/models/resep_model.dart';

class ResepService {
  // Get List Resep
  Future<ResepModel> getResep() async {
    var response = await Dio()
        .get('https://masak-apa-tomorisakura.vercel.app/api/recipes/1');
    return ResepModel.fromJson(response.data);
  }

  // Get Detail Resep
  Future<DetailResepModel> getDetailResep({String? key}) async {
    var response = await Dio()
        .get('https://masak-apa-tomorisakura.vercel.app/api/recipe/$key');
    return DetailResepModel.fromJson(response.data);
  }
}
