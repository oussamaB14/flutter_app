import 'package:flutter/material.dart';
import 'package:flutter_app/src/presentation/settings.dart';

class SharedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;

  const SharedAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Settings()),
            );
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
