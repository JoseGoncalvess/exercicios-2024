import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:go_router/go_router.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidget({super.key, required this.ct, required this.ontap});
  final BuildContext ct;
  final Function() ontap;

  @override
  Size get preferredSize => Size.fromHeight(MediaQuery.of(ct).size.height);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: preferredSize.height * 0.22,
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.primary),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                    onPressed: () => context.push("/save"),
                    icon: Icon(
                        color: Colors.white,
                        size: MediaQuery.of(context).size.width * 0.1,
                        Icons.bookmark)),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.10,
                      bottom: 10,
                      top: 25),
                  child: Column(
                    children: [
                      Text(
                        'Chuva 💜 Flutter',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                MediaQuery.of(context).size.width * 0.07,
                            fontWeight: FontWeight.w600),
                      ),
                      Text("Programação",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05))
                    ],
                  ),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.82,
              height: MediaQuery.of(context).size.height * 0.06,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.white),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.13,
                        height: MediaQuery.of(context).size.height * 0.06,
                        decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(45)),
                            color: fromCssColor('#306DC3')),
                        child: IconButton(
                            onPressed:() => ontap(),
                            icon: const Icon(Icons.calendar_month_outlined))),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      alignment: Alignment.center,
                      child: const Text(
                        "Exibir todas as atividades",
                        style: TextStyle(fontWeight: FontWeight.w500),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
