import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';

//まだ完成してない
class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    required this.title,
    super.key,
  });

  final String title;

  static Future<void> show(
    BuildContext context,
    String title,
  ) async {
    await showDialog<SimpleDialog>(
      context: context,
      builder: (context) {
        return ErrorDialog(
          title: title,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      children: [
        Stack(
          children: [
            Container(
              height: 200,
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
              ),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 6,
              right: 10,
              child: InkWell(
                onTap: () {
                  context.router.pop();
                },
                child: const Icon(
                  Icons.close,
                  color: Colors.black54,
                  size: 28,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
