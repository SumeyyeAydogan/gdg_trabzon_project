import 'dart:io';

class ImageAnalysisModel {
  final File? image;
  final String question;
  final String? response;
  final bool isLoading;

  ImageAnalysisModel({
    this.image,
    this.question = '',
    this.response,
    this.isLoading = false,
  });

  ImageAnalysisModel copyWith({
    File? image,
    String? question,
    String? response,
    bool? isLoading,
  }) {
    return ImageAnalysisModel(
      image: image ?? this.image,
      question: question ?? this.question,
      response: response ?? this.response,
      isLoading: isLoading ?? this.isLoading,
    );
  }
} 