// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CategoryData _$CategoryDataFromJson(Map<String, dynamic> json) =>
    _CategoryData(
      lang: json['lang'] as String,
      page: (json['page'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      country: json['country'] as String,
      requestDateTime: json['requestDateTime'] as String?,
      responseSource: json['responseSource'] as String?,
      pagination: json['pagination'] == null
          ? null
          : Pagination.fromJson(json['pagination'] as Map<String, dynamic>),
      productList: (json['productList'] as List<dynamic>?)
          ?.map((e) => Product.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CategoryDataToJson(_CategoryData instance) =>
    <String, dynamic>{
      'lang': instance.lang,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'country': instance.country,
      'requestDateTime': instance.requestDateTime,
      'responseSource': instance.responseSource,
      'pagination': instance.pagination,
      'productList': instance.productList,
    };

_Pagination _$PaginationFromJson(Map<String, dynamic> json) => _Pagination(
  currentPage: (json['currentPage'] as num?)?.toInt(),
  nextPageNum: (json['nextPageNum'] as num?)?.toInt(),
  totalPages: (json['totalPages'] as num?)?.toInt(),
);

Map<String, dynamic> _$PaginationToJson(_Pagination instance) =>
    <String, dynamic>{
      'currentPage': instance.currentPage,
      'nextPageNum': instance.nextPageNum,
      'totalPages': instance.totalPages,
    };

_Product _$ProductFromJson(Map<String, dynamic> json) => _Product(
  id: json['id'] as String?,
  productName: json['productName'] as String?,
  brandName: json['brandName'] as String?,
  url: json['url'] as String?,
  prices: (json['prices'] as List<dynamic>?)
      ?.map((e) => Price.fromJson(e as Map<String, dynamic>))
      .toList(),
  availability: json['availability'] == null
      ? null
      : Availability.fromJson(json['availability'] as Map<String, dynamic>),
  sizes: (json['sizes'] as List<dynamic>?)
      ?.map((e) => Size.fromJson(e as Map<String, dynamic>))
      .toList(),
  colorName: json['colorName'] as String?,
  modelImage: json['modelImage'] as String?,
  newArrival: json['newArrival'] as bool?,
  mainCatCode: json['mainCatCode'] as String?,
);

Map<String, dynamic> _$ProductToJson(_Product instance) => <String, dynamic>{
  'id': instance.id,
  'productName': instance.productName,
  'brandName': instance.brandName,
  'url': instance.url,
  'prices': instance.prices,
  'availability': instance.availability,
  'sizes': instance.sizes,
  'colorName': instance.colorName,
  'modelImage': instance.modelImage,
  'newArrival': instance.newArrival,
  'mainCatCode': instance.mainCatCode,
};

_Price _$PriceFromJson(Map<String, dynamic> json) => _Price(
  priceType: json['priceType'] as String?,
  price: (json['price'] as num?)?.toDouble(),
  formattedPrice: json['formattedPrice'] as String?,
);

Map<String, dynamic> _$PriceToJson(_Price instance) => <String, dynamic>{
  'priceType': instance.priceType,
  'price': instance.price,
  'formattedPrice': instance.formattedPrice,
};

_Availability _$AvailabilityFromJson(Map<String, dynamic> json) =>
    _Availability(
      stockState: json['stockState'] as String?,
      comingSoon: json['comingSoon'] as bool?,
    );

Map<String, dynamic> _$AvailabilityToJson(_Availability instance) =>
    <String, dynamic>{
      'stockState': instance.stockState,
      'comingSoon': instance.comingSoon,
    };

_Size _$SizeFromJson(Map<String, dynamic> json) => _Size(
  id: json['id'] as String?,
  label: json['label'] as String?,
  stock: (json['stock'] as num?)?.toInt(),
);

Map<String, dynamic> _$SizeToJson(_Size instance) => <String, dynamic>{
  'id': instance.id,
  'label': instance.label,
  'stock': instance.stock,
};
