import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;
import '../resources/manager_color.dart';
import '../widgets/failed_login_widget.dart';
import '../widgets/shimmer_widget.dart';

mixin Helpers {
  Future<void> showSnackBar(
      BuildContext context, {
        required String message,
        bool error = false,
      }) async {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: Text(message),
        backgroundColor: error ? Colors.red.shade700 : ManagerColors.primaryColor,
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  Future<void> showSuccessDialog({
    required String title,
    required String content,
    VoidCallback? onMoreProcess,
    String? processText,
    String? processButtonText,
    required BuildContext context,
  }) async {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return FailLoginDialog(
            title: title,
            content: content,
            onMoreProcess: onMoreProcess,
            processText: processText,
            processButtonText: processButtonText,
          );
        });
  }

  Future<void> progressDialog({
    required BuildContext context,
    required String title,
    bool error = false,
  }) async {
    await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.r),
              color: Colors.white,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  title,
                  style: TextStyle(color: error ? ManagerColors.snackBarErrorColor : ManagerColors.textColor),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 60.h,
                  width: 60.h,
                  child: const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Widget slimmerForImageLoadingCache(context, url) {
    return ShimmerWidget(
      width: double.infinity,
      height: double.infinity,
      baseColor: ManagerColors.primaryColor.withOpacity(0.1),
      highlightColor: Colors.white,
    );
  }

  Widget imageError(BuildContext context, String url, dynamic error) {
    if (error is http.Response && error.statusCode == 404) {
      // If the server returns a 404 status code, display a default image from the app's assets
      return Center(
        child: SvgPicture.asset(
          "assets/images/frame.svg",
          height: 100.h,
          colorFilter: ColorFilter.mode(ManagerColors.primaryColor.withOpacity(0.2), BlendMode.srcIn),
        ),
      );
    } else {
      // For other errors, display a placeholder widget
      return Center(
        child: SvgPicture.asset(
          "assets/images/frame.svg",
          height: 100.h,
          colorFilter: ColorFilter.mode(ManagerColors.primaryColor.withOpacity(0.2), BlendMode.srcIn),
        ),
      );
    }
  }

  Widget slimmerForImageLoading(context, child, loadingProgress) {
    if (loadingProgress == null) {
      return child;
    }
    return const ShimmerWidget(
      width: double.infinity,
      height: double.infinity,
      baseColor: ManagerColors.primaryColor,
      highlightColor: Colors.white,
    );
  }
}