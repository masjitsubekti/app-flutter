class ResponseDivisi {
  List<DivisiModel> data;

  ResponseDivisi({
    required this.data,
  });

  factory ResponseDivisi.fromJson(Map<String, dynamic> json) => ResponseDivisi(
        data: List<DivisiModel>.from(
            json["data"].map((x) => DivisiModel.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class DivisiModel {
  String? id;
  String? kode;
  String? nama;
  String? idDepartement;
  String? createdBy;
  DateTime? createdAt;
  String? updatedBy;
  DateTime? updatedAt;
  bool? isDeleted;
  String? tenantId;

  DivisiModel({
    this.id,
    this.kode,
    this.nama,
    this.idDepartement,
    this.createdBy,
    this.createdAt,
    this.updatedBy,
    this.updatedAt,
    this.isDeleted,
    this.tenantId,
  });

  factory DivisiModel.fromJson(Map<String, dynamic> json) => DivisiModel(
        id: json["id"],
        kode: json["kode"],
        nama: json["nama"],
        idDepartement: json["idDepartement"],
        createdBy: json["createdBy"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedBy: json["updatedBy"],
        updatedAt: json["updatedAt"],
        isDeleted: json["isDeleted"],
        tenantId: json["tenant_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "kode": kode,
        "nama": nama,
        "idDepartement": idDepartement,
        "createdBy": createdBy,
        "createdAt": createdAt,
        "updatedBy": updatedBy,
        "updatedAt": updatedAt,
        "isDeleted": isDeleted,
        "tenant_id": tenantId,
      };
}
