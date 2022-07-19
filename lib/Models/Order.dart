// class Order {
//   String id;
//   String title;
//   String image_kr;
//   String image_ar;
//   String image_en;
//   String sort;
//   String type;
//   String value;
//
//
//   Order(
//       {this.id,
//       this.title,
//       this.image_kr,
//       this.image_ar,
//       this.image_en,
//       this.sort,
//       this.type,
//       this.value,});
//
//   factory Order.fromJson(Map<String, dynamic> data) =>
//       _$OrderFromJson(data);
//
//   Map<String, dynamic> toJson() => _$OrderToJson(this);
//
//   Map toMap() {
//     var map = new Map<String, dynamic>();
//     map["id"] = id;
//     map["title"] = title;
//     map["image_kr"] = image_kr;
//     map["image_ar"] = image_ar;
//     map["image_en"] = image_en;
//     map["sort"] = sort;
//     map["type"] = type;
//     map["value"] = value;
//
//     return map;
//   }
// }
//
// Order _$OrderFromJson(Map<String, dynamic> json) {
//   return Order(
//     id: json['id'] as String,
//     title: json['title'] as String,
//     image_kr: json['image_kr'] as String,
//     image_ar: json['image_ar'] as String,
//     image_en: json['image_en'] as String,
//     sort: json['sort'] as String,
//     type: json['type'] as String,
//     value: json['value'] as String,
//
//   );
// }
//
// Map<String, dynamic> _$OrderToJson(Order instance) => <String, dynamic>{
//       "id": instance.id,
//       "title": instance.title,
//       "image_kr": instance.image_kr,
//       "image_ar": instance.image_ar,
//       "image_en": instance.image_en,
//       "sort": instance.sort,
//       "type": instance.type,
//       "value": instance.value,
//     };
