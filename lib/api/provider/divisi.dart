import 'package:belajar_flutter/api/api_services.dart';
import 'package:belajar_flutter/model/divisi.model.dart';
import 'package:belajar_flutter/view/utils/response.dart';
import 'package:flutter/material.dart';

class DivisiProvider with ChangeNotifier{
  List<DivisiModel>? data;
  Response list = Response();

  void _setResponse(Response response) {
    list = response;
    notifyListeners();
  }

  Future divisi(context) async {
    _setResponse(Response.loading());
    try {
      final _apiProvider = ApiServices();
      final response = await _apiProvider.fetchDivisi();
      ResponseDivisi resDivisi = ResponseDivisi.fromJson(response);
      data = resDivisi.data;
      return _setResponse(Response.complete(response));
    } catch (e) {
      print("ERROR jenis dinas : $e");
      _setResponse(Response.error(e.toString()));
      throw (e);
    }
  }
}