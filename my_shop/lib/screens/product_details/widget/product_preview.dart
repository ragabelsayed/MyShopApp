import 'package:flutter/material.dart';
import '/config/palette.dart';

class ProductPreview extends StatefulWidget {
  final List<String> productImages;

  const ProductPreview({required this.productImages});

  @override
  _ProductPreviewState createState() => _ProductPreviewState();
}

class _ProductPreviewState extends State<ProductPreview> {
  int _selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1.9,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.network(widget.productImages[_selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            widget.productImages.length,
            (index) => _buildSmallPreview(index: index),
          ),
        ),
      ],
    );
  }

  Widget _buildSmallPreview({required int index}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.all(10),
          fixedSize: const Size(50, 50),
          backgroundColor: Colors.white,
          side: BorderSide(
            color: _selectedImage == index
                ? Palette.kPrimaryColor
                : Colors.transparent,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Image.network(widget.productImages[index]),
        onPressed: () => setState(() => _selectedImage = index),
      ),
    );
  }
}
