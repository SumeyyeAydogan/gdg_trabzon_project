import 'dart:io';

import 'package:google_generative_ai/google_generative_ai.dart';

import '../constants/api_constants.dart';

class GeminiService {
  final GenerativeModel _model;

  GeminiService() : _model = GenerativeModel(model: ApiConstants.geminiModel, apiKey: ApiConstants.geminiModel);

  Future<String> analyzeImage(File image, String question) async {
    try {
      final imageBytes = await image.readAsBytes();

      final content = [
        Content.multi([
          TextPart(question),
          DataPart('image/jpeg', imageBytes),
        ])
      ];
      final response = await _model.generateContent(content);
      return response.text ?? 'Yanıt alınamadı';
    } catch (e) {
      throw Exception('Görüntü analizi sırasında hata oluştu: $e');
    }
  }
}
