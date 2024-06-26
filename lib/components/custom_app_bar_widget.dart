import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarWidget({super.key, required this.press});

  final Function press;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(color: Theme.of(context).primaryColor),
        height: MediaQuery.of(context).size.height * 0.14,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                onPressed: () => press(),
                icon: Icon(
                    color: Colors.white,
                    size: MediaQuery.of(context).size.width * 0.07,
                    Icons.arrow_back_ios_new_outlined)),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.65,
              child: Text(
                'Chuva 💜 Flutter',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width * 0.05,
                    fontWeight: FontWeight.w500),
              ),
            )
          ],
        ),
      ),
    );
  }
}
