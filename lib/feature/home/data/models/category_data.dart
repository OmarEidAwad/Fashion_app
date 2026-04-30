import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_data.freezed.dart';
part 'category_data.g.dart';

@freezed
abstract class CategoryData with _$CategoryData {
  const factory CategoryData({
    // التعديل الضروري: شيلنا required وخليناهم nullable
    // لأنهم مش موجودين في الـ JSON اللي راجع من السيرفر
    String? lang,
    int? page,
    int? pageSize,
    String? country,

    String? requestDateTime,
    String? responseSource,
    Pagination? pagination,
    PlpList? plpList,
  }) = _CategoryData;

  factory CategoryData.fromJson(Map<String, dynamic> json) =>
      _$CategoryDataFromJson(json);
}

@freezed
abstract class PlpList with _$PlpList {
  const factory PlpList({
    @JsonKey(name: 'productList') List<Product>? productList,
  }) = _PlpList;

  factory PlpList.fromJson(Map<String, dynamic> json) =>
      _$PlpListFromJson(json);
}

@freezed
class Product with _$Product {
  const factory Product({
    dynamic id,
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

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
class Price with _$Price {
  const factory Price({
    String? priceType,
    num? price,
    num? minPrice,
    num? maxPrice,
    String? formattedPrice,
  }) = _Price;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

@freezed
abstract class Availability with _$Availability {
  const factory Availability({String? stockState, bool? comingSoon}) =
      _Availability;

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);
}

@freezed
abstract class Size with _$Size {
  const factory Size({dynamic id, dynamic label, int? stock}) = _Size;

  factory Size.fromJson(Map<String, dynamic> json) => _$SizeFromJson(json);
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
