import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';
import 'package:baddies_ai_task/core/extentions/asset_extention.dart';
import 'package:baddies_ai_task/core/theme/app_palette.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final bool isLeft;
  final Color bgColor;
  final String? imageUrl;
  final double width;
  final double height;

  const ProfileCard({
    super.key,
    required this.name,
    required this.isLeft,
    required this.bgColor,
    this.imageUrl,
    this.width = 170,
    this.height = 195,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          ClipPath(
            clipper: SlantedCardClipper(isLeft: isLeft),
            child: Image.asset(
              context.assets.images.grain_texture_square_png,
              color: bgColor.withValues(alpha: 0.6),
              width: width,
              height: height,
              fit: BoxFit.fitHeight,
            ),
          ),
          CustomPaint(
            size: Size(width, height),
            painter: SlantedCardPainter(
              isLeft: isLeft,
              bgColor: bgColor.withValues(alpha: 0.7),
            ),
          ),
          Positioned(
            bottom: 40,
            // TODO: resim ve ilgili widget değiştirilebilir.
            child: CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=1'),
            ),
          ),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: bgColor.withValues(alpha: 0.9),
              borderRadius: BorderRadius.circular(15),
            ),
            height: 30,
            width: 115,
            child: Text(
              name,
              style: context.textStyles.labelMedium.copyWith(
                fontSize: 16,
                color: AppPalette.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SlantedCardClipper extends CustomClipper<Path> {
  final bool isLeft;
  SlantedCardClipper({required this.isLeft});

  @override
  Path getClip(Size size) {
    final double radius = 20.0;
    Path path = Path();

    if (!isLeft) {
      path.moveTo(0, radius);
      path.arcToPoint(Offset(radius, 0),
          radius: Radius.circular(radius), clockwise: true);
      path.lineTo(size.width - radius, 20);
      path.arcToPoint(Offset(size.width, 20 + radius),
          radius: Radius.circular(radius), clockwise: true);
      path.lineTo(size.width, size.height - radius);
      path.arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius), clockwise: true);
      path.lineTo(radius, size.height - 20);
      path.arcToPoint(Offset(0, size.height - 20 - radius),
          radius: Radius.circular(radius), clockwise: true);
    } else {
      path.moveTo(0, 20 + radius);
      path.arcToPoint(Offset(radius, 20),
          radius: Radius.circular(radius), clockwise: true);
      path.lineTo(size.width - radius, 0);
      path.arcToPoint(Offset(size.width, radius),
          radius: Radius.circular(radius), clockwise: true);
      path.lineTo(size.width, size.height - 20 - radius);
      path.arcToPoint(Offset(size.width - radius, size.height - 20),
          radius: Radius.circular(radius), clockwise: true);
      path.lineTo(radius, size.height);
      path.arcToPoint(Offset(0, size.height - radius),
          radius: Radius.circular(radius), clockwise: true);
    }

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class SlantedCardPainter extends CustomPainter {
  final bool isLeft;
  final Color bgColor;

  SlantedCardPainter({required this.isLeft, required this.bgColor});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = bgColor
      ..style = PaintingStyle.fill;

    final double radius = 20.0;
    final path = Path();

    if (!isLeft) {
      path.moveTo(0, radius);
      path.arcToPoint(Offset(radius, 0),
          radius: Radius.circular(radius), clockwise: true);
      path.lineTo(size.width - radius, 20);
      path.arcToPoint(Offset(size.width, 20 + radius),
          radius: Radius.circular(radius), clockwise: true);
      path.lineTo(size.width, size.height - radius);
      path.arcToPoint(Offset(size.width - radius, size.height),
          radius: Radius.circular(radius), clockwise: true);
      path.lineTo(radius, size.height - 20);
      path.arcToPoint(Offset(0, size.height - 20 - radius),
          radius: Radius.circular(radius), clockwise: true);
    } else {
      path.moveTo(0, 20 + radius);
      path.arcToPoint(Offset(radius, 20),
          radius: Radius.circular(radius), clockwise: true);
      path.lineTo(size.width - radius, 0);
      path.arcToPoint(Offset(size.width, radius),
          radius: Radius.circular(radius), clockwise: true);
      path.lineTo(size.width, size.height - 20 - radius);
      path.arcToPoint(Offset(size.width - radius, size.height - 20),
          radius: Radius.circular(radius), clockwise: true);
      path.lineTo(radius, size.height);
      path.arcToPoint(Offset(0, size.height - radius),
          radius: Radius.circular(radius), clockwise: true);
    }

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
