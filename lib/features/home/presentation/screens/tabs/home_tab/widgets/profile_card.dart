import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String name;
  final String? imageUrl;
  final double width;
  final double height;

  const ProfileCard({
    super.key,
    required this.name,
    this.imageUrl,
    this.width = 300,
    this.height = 400,
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
      ..color = const Color(0xFFB0C4DE) // Açık mavi renk
      ..style = PaintingStyle.fill;

    final double slantHeight =
        size.height * 0.08; // Sağ kenarı yukarı kaydırma miktarı
    final double radius = 20.0; // Köşe yuvarlatma

    final path = Path();

    // Sol üst başlangıç noktası (ekrana paralel ve düz)
    path.moveTo(0, radius);

    // Sol üst köşe
    path.arcToPoint(
      Offset(radius, 0),
      radius: Radius.circular(radius),
      clockwise: true,
    );

    // Üst kenar (sağ tarafa doğru eğimli)
    path.lineTo(size.width - radius, slantHeight);

    // Sağ üst köşe
    path.arcToPoint(
      Offset(size.width, slantHeight + radius),
      radius: Radius.circular(radius),
      clockwise: true,
    );

    // Sağ kenar (dik ve yukarıda başlıyor)
    path.lineTo(size.width, size.height - radius);

    // Sağ alt köşe
    path.arcToPoint(
      Offset(size.width - radius, size.height),
      radius: Radius.circular(radius),
      clockwise: true,
    );

    // Alt kenar (üst kenara paralel ve eğimli)
    path.lineTo(radius, size.height - slantHeight);

    // Sol alt köşe
    path.arcToPoint(
      Offset(0, size.height - radius - slantHeight),
      radius: Radius.circular(radius),
      clockwise: true,
    );

    // Sol kenar (dik ve ekrana paralel)
    path.lineTo(0, radius);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
