import 'package:flutter/material.dart';

class DesignerAvatarWidget extends StatelessWidget {
  final String imagePath;
  final String name;
  const DesignerAvatarWidget(
      {Key? key, required this.name, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(imagePath),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 10, color: Color(0xFF9F9797)),
            ),
          ],
        ),
      ),
    );
  }
}
