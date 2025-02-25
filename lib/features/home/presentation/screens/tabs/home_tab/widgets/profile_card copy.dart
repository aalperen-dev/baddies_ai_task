import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String? imageUrl;
  final double width;
  final double height;
  final bool isLeft;

  const ProfileCard({
    super.key,
    required this.name,
    this.imageUrl,
    this.width = 300,
    this.height = 400,
    required this.isLeft,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Stack(
        children: [
          CustomPaint(
            size: Size(width, height),
            painter: SlantedCardPainter(),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: width * 0.8,
                  height: width * 0.8,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: imageUrl != null
                        ? Image.network(
                            imageUrl!,
                            fit: BoxFit.cover,
                          )
                        : Container(
                            color: Colors.grey[200],
                            child: Icon(
                              Icons.person,
                              size: width * 0.4,
                              color: Colors.grey[400],
                            ),
                          ),
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  name,
                  style: TextStyle(
                    fontSize: width * 0.08,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SlantedCardPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFB0C4DE)
      ..style = PaintingStyle.fill;

    final double slantHeight = size.height * 0.08;
    final double radius = 20.0;

    final path = Path();

    path.moveTo(0, radius);

    path.arcToPoint(
      Offset(radius, 0),
      radius: Radius.circular(radius),
      clockwise: true,
    );

    path.lineTo(size.width - radius, slantHeight);

    path.arcToPoint(
      Offset(size.width, slantHeight + radius),
      radius: Radius.circular(radius),
      clockwise: true,
    );

    path.lineTo(size.width, size.height - radius);

    path.arcToPoint(
      Offset(size.width - radius, size.height),
      radius: Radius.circular(radius),
      clockwise: true,
    );

    path.lineTo(radius, size.height - slantHeight);

    path.arcToPoint(
      Offset(0, size.height - radius - slantHeight),
      radius: Radius.circular(radius),
      clockwise: true,
    );

    path.lineTo(0, radius);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
