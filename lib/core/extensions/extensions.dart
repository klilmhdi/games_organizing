import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../resources/manager_color.dart';
import '../widgets/failed_login_widget.dart';

extension NonNullString on String? {
  String onNull() {
    if (this == null) {
      return '';
    } else {
      return this!;
    }
  }
}

extension NonNullDouble on double? {
  double onNull() {
    if (this == null) {
      return 0;
    } else {
      return this!;
    }
  }
}

extension NonNullInt on int? {
  int onNull() {
    if (this == null) {
      return 0;
    } else {
      return this!;
    }
  }
}

extension NonNullBoolean on bool? {
  bool onNull() {
    if (this == null) {
      return false;
    } else {
      return this!;
    }
  }
}

extension NonNullColor on Color? {
  Color onNull() {
    if (this == null) {
      return ManagerColors.transparent;
    } else {
      return this!;
    }
  }
}

extension NonNullFunction on Function()? {
  Function onNull() {
    if (this == null) {
      return () {};
    } else {
      return this!;
    }
  }
}

extension NonNullFunctionBool on bool Function()? {
  bool Function() onNull() {
    if (this == null) {
      return () {
        return false;
      };
    } else {
      return this!;
    }
  }
}

extension NonNullWidget on Widget? {
  Widget onNull() {
    if (this == null) {
      return const SizedBox();
    } else {
      return this!;
    }
  }
}

extension ContextHelpers on BuildContext {
  /// ================================>  Show Snack Bar
  Future<void> showSnackBar({
    required String message,
    bool error = false,
  }) async {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: Text(message),
        backgroundColor: error ? Colors.red.shade700 : Colors.green,
        padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }

  Future<void> showFailDialog({
    required String title,
    required String content,
    VoidCallback? onMoreProcess,
    String? processText,
    String? processButtonText,
  }) async {
    showDialog(
        context: this,
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

  Future<void> showSuccessDialog({
    required String title,
    required String content,
    VoidCallback? onMoreProcess,
    String? processText,
    String? processButtonText,
  }) async {
    showDialog(
        context: this,
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

  Future<void> showPopupMenu({
    required GlobalKey locationTextKey,
    required List<Map<String, dynamic>> items,
    Color? color,
    ShapeBorder? shape,
    Offset? offset,
    double? verticalPadding,
    double? horizontalMargin,
    double? itemHeight,
    double? fontSize,
    EdgeInsets? itemPadding,
    BoxConstraints constraints = const BoxConstraints(
        minWidth: double.maxFinite, maxWidth: double.maxFinite),
  }) async {
    final RenderBox renderBox =
        locationTextKey.currentContext!.findRenderObject() as RenderBox;
    final Offset menuOffset = offset ?? Offset(0, renderBox.size.height + 10);

    showMenu<String>(
      context: this,
      constraints: constraints,
      position: RelativeRect.fromLTRB(
        menuOffset.dx,
        menuOffset.dy + renderBox.localToGlobal(Offset.zero).dy,
        menuOffset.dx + renderBox.size.width,
        menuOffset.dy +
            renderBox.localToGlobal(Offset.zero).dy +
            renderBox.size.height,
      ),
      color: color ?? ManagerColors.buttonColorLight,
      shape: shape ??
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      items: items.asMap().entries.map((entry) {
        final index = entry.key;
        final item = entry.value;

        return PopupMenuItem<String>(
          value: item['text'] as String,
          onTap: () {
            if (item['onTap'] != null) {
              item['onTap']!();
            }
          },
          padding: itemPadding ?? EdgeInsets.zero,
          height: itemHeight ?? 48.0,
          child: Container(
            padding: verticalPadding != null
                ? EdgeInsets.symmetric(vertical: verticalPadding)
                : null,
            child: Text(
              item['text'] as String,
              style: TextStyle(fontSize: fontSize ?? 13),
            ),
          ),
        );
      }).toList(),
      elevation: 0,
    );
  }
}
