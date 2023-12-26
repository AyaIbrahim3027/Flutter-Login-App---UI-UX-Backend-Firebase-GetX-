import 'package:flutter/material.dart';
import 'package:login/repos/auth_repo/auth_repo.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget{
  const DashboardAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(
        Icons.menu,
        color: Colors.black,
      ),
      title: const Text(
        'Programming',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      centerTitle: true,
      elevation: 0,
      backgroundColor: Colors.transparent,
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 20),
          child: IconButton(
            onPressed: () {
              AuthRepo.instance.logout();
            },
            icon: const Image(
              image: AssetImage('assets/woman.png'),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(55);
}
