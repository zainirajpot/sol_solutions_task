import 'dart:convert';

import '../util/constatnt/app_images/app_images.dart';

class ImageModelHorizontal {
  final String imagePath;

  ImageModelHorizontal(
    this.imagePath,
  );

  ImageModelHorizontal copyWith({
    String? imagePath,
  }) {
    return ImageModelHorizontal(
      imagePath ?? this.imagePath,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'imagePath': imagePath});

    return result;
  }

  factory ImageModelHorizontal.fromMap(Map<String, dynamic> map) {
    return ImageModelHorizontal(
      map['imagePath'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ImageModelHorizontal.fromJson(String source) =>
      ImageModelHorizontal.fromMap(json.decode(source));

  @override
  String toString() => 'ImageModel(imagePath: $imagePath)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ImageModelHorizontal && other.imagePath == imagePath;
  }

  @override
  int get hashCode => imagePath.hashCode;
}
final List<ImageModelHorizontal> images = [
    ImageModelHorizontal(AppImages.all),
    ImageModelHorizontal(AppImages.bottle),
    ImageModelHorizontal(AppImages.coktail),
     ImageModelHorizontal(AppImages.beer),
    ImageModelHorizontal(AppImages.can),
   // ImageModel(AppImages.coktail),
    // Add more image paths as needed
  ];