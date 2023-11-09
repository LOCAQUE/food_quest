import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

//まだ完成してない
class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    super.key,
  });

  static Future<void> show(
    BuildContext context,
  ) async {
    await showDialog<SimpleDialog>(
      context: context,
      builder: (context) {
        return const ErrorDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      children: [
        Stack(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.white,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(child: Text('エラーが発生しました')),
                ],
              ),
            ),
            Positioned(
              top: 10,
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
