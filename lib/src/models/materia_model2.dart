//To parse this JSON data, do
//
//     final materiaModel = materiaModelFromJson(jsonString);

import 'dart:convert';

import 'package:controlacademico/src/models/nota_model2.dart';


MateriaModel materiaModelFromJson(String str) => MateriaModel.fromJson(json.decode(str));

String materiaModelToJson(MateriaModel data) => json.encode(data.toJson());

class MateriaModel {
    MateriaModel({
        this.codigo = '',
        this.nombre = '',
        this.meta = 0.0,
        this.notaMin = 0.0,
        this.notas
    });

    String codigo;
    String nombre;
    double meta;
    double notaMin;
    List<NotaModel> notas;

    factory MateriaModel.fromJson(Map<String, dynamic> json) => MateriaModel(
        codigo   : json["codigo"],
        nombre   : json["nombre"],
        meta     : json["meta"],
        notaMin  : json["notaMin"],
        notas    : List<NotaModel>.from(json["notas"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "codigo"  : codigo,
        "nombre"  : nombre,
        "meta"    : meta,
        "notaMin" : notaMin,
        "notas"   : List<NotaModel>.from(notas.map((x) => x)),
    };
}
