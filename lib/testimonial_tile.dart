import 'package:flutter/material.dart';

class TestimonialTile extends StatelessWidget {
  const TestimonialTile(
      {Key? key, this.image, this.top, this.left, required this.leftAlign})
      : super(key: key);
  final String? image;
  final double? top;
  final double? left;
  final bool leftAlign;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            radius: 28.0,
            backgroundImage: NetworkImage(image!),
          ),
          Positioned(
            left: -80.0,
            child: Container(
              height: 20.0,
              width: 100.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10.0,
                      offset: Offset(
                        0.0,
                        5.0,
                      ),
                    ),
                  ]),
              child: Row(children: [
                CircleAvatar(
                  radius: 10.0,
                  backgroundColor: Colors.amber[400],
                  child: const Icon(
                    Icons.favorite_rounded,
                    color: Colors.white,
                    size: 15.0,
                  ),
                ),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15.0,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15.0,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15.0,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15.0,
                ),
                const Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15.0,
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
