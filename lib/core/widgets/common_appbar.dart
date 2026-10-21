import 'package:flutter/material.dart';

class CommonAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final Function()? onTap;

  const CommonAppbar({super.key, this.onTap,  this.title});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: onTap,
        icon: const Icon(Icons.arrow_back_ios),
      ),
      title: Text(title??''),
    );
  }
}
