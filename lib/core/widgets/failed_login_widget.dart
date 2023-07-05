import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../resources/manager_color.dart';

class FailLoginDialog extends StatelessWidget {
  final String title;
  final String content;
  final VoidCallback? onMoreProcess;
  final String? processText;
  final String? processButtonText;

  const FailLoginDialog(
      {Key? key, required this.title, required this.content, this.onMoreProcess, this.processText, this.processButtonText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      surfaceTintColor: ManagerColors.background,
      title: Text(
        title,
        style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.bold, color: Colors.red),
      ),
      content: Text(
        "$content\n${processText ?? ""}",
        style: TextStyle(fontSize: 12.sp, color: ManagerColors.textColor),
      ),
      backgroundColor: ManagerColors.background,
      actionsAlignment: MainAxisAlignment.start,
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text(
            "حسناً",
            style: TextStyle(fontSize: 14.sp),
          ),
        ),
        if (onMoreProcess != null && processButtonText != null)
          TextButton(
            onPressed: onMoreProcess,
            child: Text(processButtonText!),
          ),
      ],
    );
  }
}