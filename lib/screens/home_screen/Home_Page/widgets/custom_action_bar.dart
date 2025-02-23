import 'package:flutter/material.dart';

class CustomActionBar extends StatelessWidget {
  const CustomActionBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CircleAvatar(
          backgroundColor: Colors.green,
          child: Icon(
            Icons.menu,
            color: Colors.white,
          ),
        ),
        Spacer(),
        CircleAvatar(
          backgroundColor: Colors.green,
          child: Icon(
            Icons.search,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
