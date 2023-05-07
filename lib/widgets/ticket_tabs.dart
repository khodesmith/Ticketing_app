import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String ticketText;
  final String ticketText2;
  const AppTicketTabs(
      {super.key, required this.ticketText, required this.ticketText2});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(3.5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50)),
            color: const Color(0xFFF4F6FD)),
        child: Row(
          children: [
            // Airline Ticket Container
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              width: size.width * .44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(AppLayout.getHeight(50)),
                  ),
                  color: Colors.white),
              child: Center(
                child: Text(
                  ticketText,
                  // style: Styles.headLineStyle3,
                ),
              ),
            ),
            // Hotels Container
            Container(
              padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
              width: size.width * .44,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(
                    right: Radius.circular(AppLayout.getHeight(50)),
                  ),
                  color: Colors.blue.shade50),
              child: Center(
                child: Text(
                  ticketText2,
                  // style: Styles.headLineStyle3,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
