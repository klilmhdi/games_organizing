import 'package:flutter/material.dart';
import '../resources/manager_color.dart';

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
