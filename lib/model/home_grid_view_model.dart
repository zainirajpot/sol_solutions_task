import 'dart:convert';

import 'package:sol_solutions_task/util/constatnt/app_images/app_images.dart';

class ImageModelGrid {
  final String imagePathBottle;
  final String text;
  final String ml;
  final String price;
  ImageModelGrid({
    required this.imagePathBottle,
    required this.text,
    required this.ml,
    required this.price,
  });

  ImageModelGrid copyWith({
    String? imagePathBottle,
    String? text,
    String? ml,
    String? price,
  }) {
    return ImageModelGrid(
      imagePathBottle: imagePathBottle ?? this.imagePathBottle,
      text: text ?? this.text,
      ml: ml ?? this.ml,
      price: price ?? this.price,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'imagePathBottle': imagePathBottle});
    result.addAll({'text': text});
    result.addAll({'ml': ml});
    result.addAll({'price': price});

    return result;
  }

  factory ImageModelGrid.fromMap(Map<String, dynamic> map) {
    return ImageModelGrid(
      imagePathBottle: map['imagePathBottle'] ?? '',
      text: map['text'] ?? '',
      ml: map['ml'] ?? '',
      price: map['price'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageModelGrid.fromJson(String source) =>
      ImageModelGrid.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ImageModelGrid(imagePathBottle: $imagePathBottle, text: $text, ml: $ml, price: $price)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ImageModelGrid &&
        other.imagePathBottle == imagePathBottle &&
        other.text == text &&
        other.ml == ml &&
        other.price == price;
  }

  @override
  int get hashCode {
    return imagePathBottle.hashCode ^
        text.hashCode ^
        ml.hashCode ^
        price.hashCode;
  }
}

final List<ImageModelGrid> imagesscnd = [
  ImageModelGrid(
      imagePathBottle: AppImages.img1,
      ml: '356ML',
      price: '\$54.8',
      text: 'Corona          Extra'),
  ImageModelGrid(
      imagePathBottle: AppImages.img2,
      ml: '356ML',
      price: '\$54.8',
      text: 'Heineken Original'),
  ImageModelGrid(
      imagePathBottle: AppImages.img4,
      ml: '356ML',
      price: '\$54.8',
      text: 'Duuel           Golden'),
  ImageModelGrid(
      imagePathBottle: AppImages.img3,
      ml: '356ML',
      price: '\$54.8',
      text: 'Fatimens        Beer'),

  // ImageModel(AppImages.coktail),
  // Add more image paths as needed
];
