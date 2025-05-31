import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerWidget extends StatelessWidget {
  final File? image;
  final Function(ImageSource) onImagePicked;
  const ImagePickerWidget({
    this.image,
    required this.onImagePicked,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (image != null)
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.file(
            image!,
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton.icon(
              onPressed: () => onImagePicked(ImageSource.gallery),
              label: const Text('Galleriden Seç'),
              icon: const Icon(Icons.photo_library),
            ),
            ElevatedButton.icon(
              onPressed: () => onImagePicked(ImageSource.camera),
              label: const Text('Fotoğraf Çek'),
              icon: const Icon(Icons.camera),
            ),
          ],
        )
      ]
    );
    
  }
}