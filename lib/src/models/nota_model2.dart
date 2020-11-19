// To parse this JSON data, do
//
//     final notaModel = notaModelFromJson(jsonString);

import 'dart:convert';

NotaModel notaModelFromJson(String str) => NotaModel.fromJson(json.decode(str));

String notaModelToJson(NotaModel data) => json.encode(data.toJson());

class NotaModel {
    NotaModel({
        this.id,
        this.porcentaje,
        this.calificacion,
    });

    int id;
    double porcentaje;
    double calificacion;

    factory NotaModel.fromJson(Map<String, dynamic> json) => NotaModel(
        id           : json["id"],
        porcentaje   : json["porcentaje"],
        calificacion : json["calificacion"],
    );

    Map<String, dynamic> toJson() => {
        "id"           : id,
        "porcentaje"   : porcentaje,
        "calificacion" : calificacion,
    };
}
