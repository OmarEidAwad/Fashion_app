import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_data.freezed.dart';
part 'category_data.g.dart';

@freezed
abstract class CategoryData with _$CategoryData {
  const factory CategoryData({
    required String lang,
    required int page,
    required int pageSize,
    required String country,
    
    String? requestDateTime,
    String? responseSource,
    Pagination? pagination,
    @JsonKey(name: 'productList') List<Product>? productList,
  }) = _CategoryData;

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);
}

@freezed
abstract class Pagination with _$Pagination {
  const factory Pagination({
    int? currentPage,
    int? nextPageNum,
    int? totalPages,
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}

@freezed
abstract class Product with _$Product {
  const factory Product({
    String? id,
    String? productName,
    String? brandName,
    String? url,
    List<Price>? prices,
    Availability? availability,
    List<Size>? sizes,
    String? colorName,
    String? modelImage,
    bool? newArrival,
    String? mainCatCode,
  }) = _Product;

  factory Product.fromJson(Map<String, dynamic> json) =>
      _$ProductFromJson(json);
}

@freezed
abstract class Price with _$Price {
  const factory Price({
    String? priceType,
    double? price,
    String? formattedPrice,
  }) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) =>
      _$PriceFromJson(json);
}

@freezed
abstract class Availability with _$Availability {
  const factory Availability({
    String? stockState,
    bool? comingSoon,
  }) = _Availability;

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);
}

@freezed
abstract class Size with _$Size {
  const factory Size({
    String? id,
    String? label,
    int? stock,
  }) = _Size;

  factory Size.fromJson(Map<String, dynamic> json) =>
      _$SizeFromJson(json);
}