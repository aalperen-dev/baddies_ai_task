import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:flutter/material.dart';

class GradientTextureButton extends StatelessWidget {
  const GradientTextureButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          GrainButton(),
          Positioned.fill(
            child: IgnorePointer(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      context.assets.images.grain_texture_png,
                    ),
                    repeat: ImageRepeat.repeat,
                    colorFilter: ColorFilter.mode(
                      Colors.pink.withOpacity(0.05),
                      BlendMode.overlay,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class GrainButton extends StatelessWidget {
  const GrainButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        backgroundColor: Colors.transparent,
        shadowColor: Colors.black.withOpacity(0.3),
        elevation: 8,
      ).copyWith(
        elevation: MaterialStateProperty.all(8),
        backgroundColor: MaterialStateProperty.all(Colors.transparent),
      ),
      child: Ink(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFF007A), Color(0xFFFF4FB3)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Container(
          constraints: BoxConstraints(minWidth: 200, minHeight: 50),
          alignment: Alignment.center,
          child: Text(
            'Custom Text',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
