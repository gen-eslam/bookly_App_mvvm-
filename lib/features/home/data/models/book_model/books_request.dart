import 'package:bookly_mvvm_bloc/features/home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';

class BooksRequest extends Equatable {
  String? kind;
  int? totalItem;
  List<BookModel>? items;

  BooksRequest({required this.items, this.kind, this.totalItem});

  factory BooksRequest.fromJson(Map<String, dynamic> json) => BooksRequest(
        kind: json["kind"],
        totalItem: json["totalItem"],
        items: List<BookModel>.from(
            json["items"].map((e) => BookModel.fromJson(e))),
      );

  Map<String, dynamic> toJson() => {
        "hind": kind,
        "toatalItem": totalItem,
        "items": items?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [kind, totalItem, items];
}
